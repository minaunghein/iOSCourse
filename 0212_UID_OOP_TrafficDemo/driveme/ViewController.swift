//
//  ViewController.swift
//  driveme
//
//  Created by Min Aung Hein on 22/10/16.
//  Copyright © 2016 smag. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    @IBOutlet weak var road2View: UIView!
    @IBOutlet weak var road1View: UIView!
    

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       var myCar = Car()
        myCar.setRoad(roadView: self.road1View)
        myCar.drive()
        
        
        var myCar1 = Car()
        myCar1.setRoad(roadView: self.road1View)
        myCar1.drive()
        
        
        var myCar2 = Car()
        myCar2.setRoad(roadView: self.road1View)
        myCar2.drive()
        
        var myCar3 = Car()
        myCar3.setRoad(roadView: self.road1View)
        myCar3.drive()
        
        var myCar4 = Car()
        myCar4.setRoad(roadView: self.road1View)
        myCar4.drive()
        
        var myCar5 = Car()
        myCar5.setRoad(roadView: self.road1View)
        myCar5.drive()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

