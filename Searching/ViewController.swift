//
//  ViewController.swift
//  Searching
//
//  Created by Fahad Rehman on 1/18/17.
//  Copyright © 2017 Codecture. All rights reserved.
//

import UIKit
import Alamofire
import SwiftSpinner


var restarray = [Dataa] ()
class ViewController: UIViewController {
    @IBOutlet weak var searchField: UITextField!
    
    
    var d : Dataa!
    var timer = Timer()
    
    var loadingIndicator = UIActivityIndicatorView ()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        downloadRestaurants {
            
        }
        
       
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func searchPressed(_ sender: Any) {
        let search = searchField.text
        if search!.isEmpty {
            let alert = UIAlertController(title: "Error", message: "Please Add a city!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            present(alert, animated: true, completion: nil)
            
        } else {
            
            downloadRestaurants {
                
            }
            
//            let alert = UIAlertController(title: nil, message: "Please wait...", preferredStyle: .alert)
//            
//            alert.view.tintColor = UIColor.black
//            
//            loadingIndicator = UIActivityIndicatorView(frame: CGRect(x: 10, y: 5, width: 50, height: 50)) as UIActivityIndicatorView
//            
//            loadingIndicator.hidesWhenStopped = true
//            loadingIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.gray
//            loadingIndicator.startAnimating()
//            
//            alert.view.addSubview(loadingIndicator)
//            present(alert, animated: true, completion: nil)
            
            if restarray.count == 0 {
                timer = Timer.scheduledTimer(timeInterval: 10, target: self, selector: #selector(ViewController.update), userInfo: nil, repeats: false)
                 SwiftSpinner.show("Downloading Restaurants")
               
                
            }
        }
    }
    
    
    
    
    func update() {
        if restarray.count == 0 {
            
        }
        else if restarray.count > 0 {
          SwiftSpinner.hide()
            self.performSegue(withIdentifier: "segueTest",sender: ViewController.self)
            
            
            
        }
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueTest" {
            
            if let destinationSegue = segue.destination as? RestaurantsViewController {
                if let rest = sender as? Dataa {
                    destinationSegue.detail = rest
                    
                }
                
            }
        }
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    
    func downloadRestaurants(download: downloadcomplete) {
        let search = searchField.text
        let URL_base = "http://haloodie.net/RestData.asmx/Search_CityWiseRest?cityname="+search!+"&radius=50&pageindex=0"
        Alamofire.request(URL_base).responseJSON { response in
            let result = response.result
            //print(response)
            
            if let dict = result.value as? [Dictionary <String, AnyObject>] {
                
                for obj in dict {
                    let rest1 = Dataa(restDict: obj)
                    restarray.append(rest1)
                    //print(obj)
                }
                
            }
        }
        download()
    }
    
}











