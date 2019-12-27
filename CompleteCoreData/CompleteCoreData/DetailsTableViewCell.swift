//
//  DetailsTableViewCell.swift
//  CompleteCoreData
//
//  Created by Rajesh Shah on 27/12/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class DetailsTableViewCell: UITableViewCell {
    
    static let identifire = "DetailsTableViewCellID"
    
    @IBOutlet weak var deviceLabel: UILabel!
    @IBOutlet weak var persionLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
