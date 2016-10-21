//
//  ViewController.swift
//  gallery
//
//  Created by Min Aung Hein on 25/9/16.
//  Copyright © 2016 smag. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cfImageView: UIImageView!
    
    var imageList = ["seed.jpg","burger.jpg","pack.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         cfImageView.image = UIImage(named:  imageList[0] )
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func changeImage(_ sender: UISegmentedControl) {
        
        
        UIView.animate(withDuration: 0.40, animations: {
            self.cfImageView.alpha = 0.0
            }) { (bol) in
                self.cfImageView.image = UIImage(named:  self.imageList[sender.selectedSegmentIndex] )
                 UIView.animate(withDuration: 0.40, animations: {
                    
                    
                     self.cfImageView.alpha = 1.0
                 })
        }
        
        
        
        
//            if sender.selectedSegmentIndex == 0
//            {
//                
//                var image = UIImage(named: "coffee1.jpg")
//                cfImageView.image = image
//                
//        }
//        else if sender.selectedSegmentIndex == 1
//            {
//                var image = UIImage(named: "coffee2.jpg")
//                cfImageView.image = image
//        }
//        else if sender.selectedSegmentIndex == 2
//            {
//                var image = UIImage(named: "coffee3.jpg")
//                cfImageView.image = image
//        }
    
    
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

