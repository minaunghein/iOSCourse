//
//  ViewController.swift
//  segment
//
//  Created by Min Aung Hein on 15/10/16.
//  Copyright © 2016 smag. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!

    @IBAction func changeValue(_ sender: UISlider) {
        
        print(sender.value)
        self.imageView.alpha = CGFloat(sender.value)  //Sender.value is Float, need to convert to CGFloat
    }
    @IBOutlet weak var slider: UISlider!            //To Control the Alpha Value of ImageView
    @IBOutlet weak var segCtrl: UISegmentedControl! //To Set the Desired Active Segment
    
    
    @IBAction func selectSegment(_ sender: UISegmentedControl) {
        
        //selectedSegmentIndex Properties of SegmentedControl 
        //contains segment index you selected
        
        self.imageView.image = UIImage(named: "pic\(sender.selectedSegmentIndex+1).jpg")
        print(sender.selectedSegmentIndex)
    }
    override func viewDidLoad() {
        
        super.viewDidLoad()
        //Firstly , set the image view accoring to the default selected segment index
        self.imageView.image = UIImage(named: "pic\(self.segCtrl.selectedSegmentIndex+1).jpg")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

