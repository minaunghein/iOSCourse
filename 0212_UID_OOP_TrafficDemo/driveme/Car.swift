//
//  Car.swift
//  driveme
//
//  Created by Min Aung Hein on 22/10/16.
//  Copyright © 2016 smag. All rights reserved.
//

import Foundation
import UIKit

class Car {
    
    //Properties
    var numWheels = 4
    var speed = 0.0
    var material = "Cast Iron"
    var status = false
    var oilLevel = 100.0
    var gasLevel = 100.0
    
    
    
    var roadView:UIView!
    var body:UIView!
    
    //Methods
    init( )
    {
        
        body = UIView(frame: CGRect(x:0,y:0,width:20,height:15))
        body.backgroundColor = UIColor.red
        
    }
    func setRoad(roadView:UIView)
    {
        self.roadView = roadView
        self.roadView.addSubview(body)
    }
    func fillOil(amt:Double)
    {
        
    }
    func fillGas(amt:Double)
    {
        
    }
    func drive()
    {
        ignite()
        speedup(desiredSpeed: 30.0)
        UIView.animate(withDuration: 2.0) {
           self.body.frame = CGRect(x:self.roadView.frame.size.width+100.0,y:0,width:20,height:15)
        }
        //The wheel is rolling, engine firing with constant speed
    }
    
    func ignite()
    {
        self.status = true
    }
    
    func stop()
    {
        while self.speed > 0
        {
            self.speed -= 0.1
            print(self.speed)
        }
        self.speed = 0
    }
    
    func speedup(desiredSpeed:Double)
    {
        
        while self.speed < desiredSpeed
        {
            self.speed += 0.1
            print(self.speed)
        }
        self.speed = desiredSpeed
        
        
        
    }
    func slowdown(desiredSpeed:Double)
    {
        
    }
    
    
}//end of class definition
