//: Playground - noun: a place where people can play

import UIKit


var car1 = "AA123456"
var car2 = "BB123456"
//..........
var car30000 = "ZZ999999"

//Use array when in need SAME type of var and under one control
//All stored variable in memory sequentially
var car:[String]  = ["AA123456" , "BB123456", "ZZ99999", "RR12221" ];

print(car[0]);
print(car[1]);
print(car[2])
print(car[3])
print(car)
//print(car[3]) out of range
print(car.count)
print("Car accessiable range: 0 to \(car.count-1) at most")

//Append
car += ["DD33333"]
car.append("EE4444444")
print(car.count)

//Dictionary
//key,value pattern, JSON Alternative
//Do not expect the value will be in order

var stdID:[String:Any ] = [ "A":"Mr A" , "B" :"Mr B"  ,"C": "Mr C" ]
var stdMark:[String:Float] = ["A":450.0,"B":360,"C":430]

print(stdID)
print(stdID["A"])
print(stdID["Z"])
print(stdMark["A"])
print(stdID)

//Modify : Assign , new pair
stdID["E"] = "Mr E"
stdID["A"] = 100
print(stdID)
