//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"



func display(text:String)
{
    print(text)
    
}

func displayAll(_ text:String ...)
{
     for t in text
     {
        print(t)
    }
}


//display(text: "Hey")
///display(text: "iOS 10")


//displayAll( "Hey","iOS"," and Swift 3")
var desc = "Brave"
display(text: desc)


var a = 10
var b = 20

func swap(p1:inout Int , p2:inout Int )
{
    let temp = p1
    p1 = p2
    p2 = temp
}

print(a, b)
swap(&a,&b)
print(a, b)