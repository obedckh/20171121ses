//
//  CATEGORYViewController.swift
//  sound(e)scape
//
//  Created by Obed Cheung on 24/11/2017.
//  Copyright © 2017 obedcheung. All rights reserved.
//

import UIKit
import AVFoundation

class CATEGORYViewController: UIViewController {

    
    
    @IBOutlet weak var CategoryLbl: UILabel!
    @IBOutlet weak var CategoryImg: UIImageView!
    
   /*
    var RedTLAudioURL = NSURL(fileURLWithPath: Bundle.mainBundle.pathForResourse("RedTL", ofType: "mp3")!)
    */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        CategoryLbl.text = CategoryName[CategoryIndex]
        CategoryImg.image = UIImage(named: CategoryName[CategoryIndex] + ".jpg")

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func PlayOcean(_ sender: UIButton) {
    }
    
    @IBAction func StopOcean(_ sender: UIButton) {
    }
    
    @IBAction func PlayCicada(_ sender: UIButton) {
    }
    
    @IBAction func StopCicada(_ sender: UIButton) {
    }
    
    @IBAction func PlayRedTL(_ sender: UIButton) {
    }
    
    @IBAction func StopRedTL(_ sender: UIButton) {
    }
    
    
    
    
    
    
    
    
    
    
    
    
}
