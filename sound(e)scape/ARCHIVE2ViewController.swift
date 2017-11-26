//
//  ARCHIVE2ViewController.swift
//  sound(e)scape
//
//  Created by Obed Cheung on 23/11/2017.
//  Copyright © 2017 obedcheung. All rights reserved.
//

import UIKit


var CategoryName = ["NATURAL ENVIRONMENT", "NATURAL INHABITANT", "ARTIFICIAL ENVIRONMENT", "ARTIFICIAL INHABITANT", "CONTACT"     ]

var CategoryIndex = 0

/*
 var CategoryName and CategoryIndex will be use also in the tableview controller OR view controller it connected

 CategoryIndex = 0 means when the row of category is tapped the IndexPath = CategoryIndex
 
 */


class ARCHIVE2ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   

    @IBOutlet weak var CategoryTableView: UITableView!
    //Category table view link
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        CategoryTableView.delegate = self
        CategoryTableView.dataSource = self
        
        //delegate and datasource of this controller can be found in the above commands
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     return CategoryName.count
     
     }
     
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     
     let cell = CategoryTableView.dequeueReusableCell(withIdentifier: "categoryCell")
        
        cell?.textLabel?.text = CategoryName[indexPath.row]
        
        return cell!
        }
    
// CHANGE AFTER CREATE SUB-PAGES FOR EACH CATEGORY
     
    // REF = https://www.youtube.com/watch?v=A6Wl8ySrOZI
     
    // CODE: SEE BELOW
     
 
   func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        CategoryIndex = indexPath.row
        performSegue(withIdentifier: "toCategory", sender: self)
    
    }
    

}
