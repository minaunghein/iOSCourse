//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


var errorCode = 3



switch (errorCode)
{
case 0:print("No error")
       fallthrough
case 1:print("File error")
    fallthrough
case 2:print("Network error")
default:print("Unknown error")
}
print("End")

