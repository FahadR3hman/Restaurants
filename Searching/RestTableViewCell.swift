//
//  RestTableViewCell.swift
//  Searching
//
//  Created by Fahad Rehman on 1/18/17.
//  Copyright © 2017 Codecture. All rights reserved.
//

import UIKit
import Alamofire

class RestTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var imgLbl: UIImageView!
    
    @IBOutlet weak var number: UILabel!
    
    @IBOutlet weak var website: UILabel!
    
    @IBOutlet weak var locality: UILabel!
    
    @IBOutlet weak var street: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func updateTableView (rest : Dataa) {
        

    }

    
    
    
}
