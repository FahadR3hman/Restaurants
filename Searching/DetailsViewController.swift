//
//  DetailsViewController.swift
//  Searching
//
//  Created by Fahad Rehman on 1/19/17.
//  Copyright © 2017 Codecture. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    @IBOutlet weak var back: UIButton!
    @IBAction func backPressed(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    
    var detail : Dataa!

    @IBOutlet weak var mon: UILabel!
    @IBOutlet weak var tue: UILabel!
    @IBOutlet weak var wed: UILabel!
    @IBOutlet weak var thu: UILabel!
    @IBOutlet weak var fri: UILabel!
    @IBOutlet weak var sat: UILabel!
    @IBOutlet weak var sun: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        updateUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func updateUI() {
        mon.text = "Monday: \(detail.monday)"
        tue.text = "Tuesday: \(detail.tuesday)"
        wed.text = "Wednesday: \(detail.wednesday)"
        thu.text = "Thrusday: \(detail.thrusday)"
        fri.text = "Friday: \(detail.friday)"
        sat.text = "Saturday: \(detail.saturday)"
        sun.text = "Sunday: \(detail.sunday)"
        
    }
}







