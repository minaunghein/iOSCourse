//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//Class -----Template to create things ,called Objects 


class Car {
    
    //Properties
    var numWheels = 4
    private var _speed = 0.0  //define varialble as private when outside world not need to use
    var material = "Cast Iron"
    var status = false
    var oilLevel = 100.0
    var gasLevel = 100.0
    
    
    var speed:Double {  //user computed variable to represent private for reading value
        return _speed
    }  //calculated or computed variable
    
    //Methods
    init()
    {
        
    }
    
    func fillOil(amt:Double)
    {
        
    }
    func fillGas(amt:Double)
    {
        
    }
    func drive()
    {
        //The wheel is rolling, engine firing with constant speed
    }
    
    func ignite()
    {
        self.status = true
    }
    
    func stop()
    {
        while self._speed > 0
        {
            self._speed -= 0.1
            print(self._speed)
        }
        self._speed = 0
    }
    
    func speedup(desiredSpeed:Double)
    {
        
        while self._speed < desiredSpeed
        {
            self._speed += 0.1
            print(self._speed)
        }
        self._speed = desiredSpeed
        
        
        
    }
    func slowdown(desiredSpeed:Double)
    {
        
    }
    
    
}//end of class definition 


var car1 = Car()

car1.numWheels
car1.status
car1.ignite()
car1.status
car1.speedup(desiredSpeed: 95)
print(car1.speed)

