//
//  ARCHIVE2ViewController.swift
//  sound(e)scape
//
//  Created by Obed Cheung on 23/11/2017.
//  Copyright © 2017 obedcheung. All rights reserved.
//

import UIKit

class ARCHIVE2ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   

    @IBOutlet weak var CategoryTableView: UITableView!
    //Category table view link
    
    let CategoryName = ["NATURAL ENVIRONMENT", "NATURAL INHABITANT", "ARTIFICIAL ENVIRONMENT", "ARTIFICIAL INHABITANT", "CONTACT"]
    
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
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
