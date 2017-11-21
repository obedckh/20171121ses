//
//  ARCHMasterTableViewController.swift
//  sound(e)scape
//
//  Created by Obed Cheung on 22/11/2017.
//  Copyright © 2017 obedcheung. All rights reserved.
//

import UIKit

class ARCHMasterTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

   let list = ["NATURAL ENVIRONMENT", "ARTIFICIAL ENVIRONMENT", "NATURAL INHABITANT", "ARTIFICIAL INHABITANT", "CONTACT"]
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return(list.count)
        
    }
  
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
    let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "ARCHMasterCell")
        cell.textLabel?.text = list(indexPath.row)
    return(cell)
    }
    
//NEED RESOLVE!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
