//
//  ViewController.swift
//  button
//
//  Created by Min Aung Hein on 22/10/16.
//  Copyright © 2016 smag. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var counter = 0
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var launcherBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        launcherBtn.isHidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func launchNow(_ sender: UIButton) {
        
    self.imageView.image = UIImage(named: "Trident_II_missile_image.jpg")
    self.launcherBtn.isHidden = true
    counter = 0
        
    }
    
    @IBAction func press1(_ sender: UIButton) {
        
        if counter == 0
        {
            counter  += 1
        }
    }
    
    @IBAction func press2(_ sender: UIButton) {
        if counter == 1
        {
            counter  += 1
        }

    }
    
    @IBAction func press3(_ sender: UIButton) {
        
        if counter == 2
        {
            counter  += 1
        }

    }
    
    @IBAction func press4(_ sender: UIButton) {
        if counter == 3
        {
            counter  += 1
        }

    }
    
    @IBAction func press5(_ sender: UIButton) {
        if counter == 4
        {
            counter  += 1
             self.imageView.image = UIImage(named: "Minuteman_III_Launch_Control.jpg")
            launcherBtn.isHidden = false
            
        }

    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

