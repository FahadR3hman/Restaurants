//
//  RestaurantsViewController.swift
//  Searching
//
//  Created by Fahad Rehman on 1/18/17.
//  Copyright © 2017 Codecture. All rights reserved.
//

import UIKit
import Alamofire

class RestaurantsViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    var data : Dataa!
    var detail : Dataa!
    
    @IBOutlet weak var back: UIButton!
    @IBAction func backPressed(_ sender: Any) {
        restarray.removeAll()
        
        tableView.reloadData()
        
        dismiss(animated: true, completion: nil)
        
        
    }
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        update()
    }
    

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        update()
    }
    func update() {
        DispatchQueue.main.async {
            
            self.tableView.reloadData()
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restarray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? RestTableViewCell {
            let rests = restarray[indexPath.row]
            cell.nameLbl.text = rests.name
            cell.locality.text = rests.locality
            cell.number.text = rests.number
            cell.street.text = rests.street
            cell.website.text = rests.website
            
            let url_image = URL(string: "\(rests.image)")!
            
            DispatchQueue.global().async {
                
                do {
                    
                    let data = try Data(contentsOf: url_image )
                    
                    DispatchQueue.global().sync {
                        
                        cell.imgLbl.image = UIImage(data: data)
                    }
                    
                } catch {
                    
                }
                
            }
            
//            tableView.reloadData()
            
            return cell
            
            
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var rest : Dataa!
        rest = restarray[indexPath.row]
        performSegue(withIdentifier: "rest", sender: rest)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "rest" {
            
            if let destinationSegue = segue.destination as? DetailsViewController {
                if let rest = sender as? Dataa {
                    destinationSegue.detail = rest
                    
                }
                
            }
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
