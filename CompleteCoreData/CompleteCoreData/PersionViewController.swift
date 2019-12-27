//
//  PersionViewController.swift
//  CompleteCoreData
//
//  Created by Rajesh Shah on 27/12/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit
import CoreData

class PersionViewController: UIViewController {

    @IBOutlet weak var addBUtton: UIButton!
    @IBOutlet weak var persionTextField: UITextField!
    @IBOutlet weak var persionTableView: UITableView!
    
    let appDelegate = UIApplication.shared.delegate as? AppDelegate
    var viewCOntext: NSManagedObjectContext?
    var persion: [Persion] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        viewCOntext = appDelegate?.persistentContainer.viewContext
     //   regisetCell()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func addBUttonAction(_ sender: Any) {
        let persionName = persionTextField.text
        savePersion(name: persionName!)
        
    }
    
    func savePersion(name: String) {
        guard let entity = NSEntityDescription.entity(forEntityName: "Persion", in: viewCOntext!) else {
            print("not found")
            return
        }
        let persion = Persion(entity: entity, insertInto: viewCOntext)
        persion.name = name
        appDelegate?.saveContext()
        fetchPersion()  
    }
    func fetchPersion() {
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Persion")
        do {
            let fetchResult = try viewCOntext?.fetch(fetchRequest) as! [Persion]
            persion = fetchResult
            persionTableView.reloadData()
            
        } catch  {
            print("entity not found")
        }
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    func regisetCell() {
           let nib = UINib(nibName: "DetailsTableViewCell", bundle: nil)
           persionTableView.register(nib, forCellReuseIdentifier: DetailsTableViewCell.identifire)
           
       }
}

extension PersionViewController: UITableViewDelegate {
    
}

extension PersionViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persion.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
             let cell = tableView.dequeueReusableCell(withIdentifier: DetailsTableViewCell.identifire, for: indexPath) as! DetailsTableViewCell
        cell.persionLabel.text = persion[indexPath.row].name
             return cell
        
    }
    
    
}
