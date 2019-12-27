//
//  PetViewController.swift
//  CompleteCoreData
//
//  Created by Rajesh Shah on 27/12/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class PetViewController: UIViewController {

    @IBAction func addBUttonTaped(_ sender: Any) {
    }
    @IBOutlet weak var persionTalveView: UITableView!
    @IBOutlet weak var persionTextFiled: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    //    regisetCell()
        // Do any additional setup after loading the view.
    }
    
    func regisetCell() {
        let nib = UINib(nibName: "DetailsTableViewCell", bundle: nil)
        persionTalveView.register(nib, forCellReuseIdentifier: DetailsTableViewCell.identifire)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension PetViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DetailsTableViewCell.identifire, for: indexPath) as! DetailsTableViewCell
        return cell
    }
    
    
}

extension PetViewController: UITableViewDelegate {
    
}
