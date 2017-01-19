//
//  Dataa.swift
//  Searching
//
//  Created by Fahad Rehman on 1/18/17.
//  Copyright © 2017 Codecture. All rights reserved.
//

import Foundation

class Dataa {
    
    private var _image: String!
    private var _name: String!
    private var _number: String!
    private var _locality: String!
    private var _street: String!
    private var _website: String!
    private var _mon: String!
    private var _tue: String!
    private var _wed : String!
    private var _thu : String!
    private var _fri : String!
    private var _sat: String!
    private var _sun : String!
    
    
    var monday : String {
        return _mon
    }
    
    var tuesday : String {
        return _tue
    }
    var wednesday : String {
        return _wed
    }
    var thrusday : String {
        return _thu
    }
    var friday : String {
        return _fri
    }
    var saturday : String {
        return _sat
    }
    var sunday : String {
        return _sun
    }
    
    var number : String {
        return _number
    }

    var image : String {
        return _image
    }
    var name : String {
        return _name
    }
    var locality : String {
        return _locality
    }
    
    var street : String {
        return _street
    }
    var website : String {
        return _website
    
    }
    init (restDict : Dictionary<String , AnyObject>) {
        
        
        if let name = restDict["RestName"] as? String {
            
            print(name)
            self._name = name
            
            
        }
        if let image = restDict["Img"] as? String {
            
            print(image)
            self._image = image
            
            
        }
        if let contact = restDict["ContactNo"] as? String {
            
            print(contact)
            self._number = contact
            
            
        }
        
        if let Locality = restDict["Locality"] as? String {
            
            print(Locality)
            self._locality = Locality
        }
        
        if let StreetAddress = restDict["StreetAddress"] as? String {
            
            print(StreetAddress)
            self._street = StreetAddress
            
            
        }
        
        if let Website = restDict["Website"] as? String {
            
            print(Website)
            self._website = Website
        }
        
        if let Monday = restDict["mon"] as? String {
            print(Monday)
            self._mon = Monday
        }
        if let Tuesday = restDict["tu"] as? String {
            print(Tuesday)
            self._tue = Tuesday
        }
        if let Wednesday = restDict["wed"] as? String {
            print(Wednesday)
            self._wed = Wednesday
        }
        if let Thursday = restDict["th"] as? String {
            print(Thursday)
            self._thu = Thursday
        }
        if let Friday = restDict["fr"] as? String {
            print(Friday)
            self._fri = Friday
        }
        if let Saturday = restDict["sa"] as? String {
            print(Saturday)
            self._sat = Saturday
        }
        if let Sunday = restDict["su"] as? String {
            print(Sunday)
            self._sun = Sunday
        }
        
        
    }
    
}
