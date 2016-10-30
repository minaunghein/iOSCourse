//: Playground - noun: a place where people can play

import UIKit


//products 
var products = ["Egg","Chicken","Pork","Beef","Fish"]
for  data   in products
{
    print(data)
}

//Students Dict
var dict = [ "A":"Apple"  , "B":"Bell", "C":"Cat"   ,"D":"Dragon"   ]
var myArray = [String]()

for (k,v) in dict
{
    print(k,v)
    myArray.append(k)
}

print(myArray)
var sorted = myArray.sorted()
print(sorted)

for i in sorted
{
    print(dict[i])
}
//--------

var numArray = [ 10,20,30,40,50]

var i = 0
while  i < numArray.count   //0 - 4
{
    print(numArray[i])
    numArray[i] = numArray[i] * 10
    i = i + 1
    if i > 2
    {
        break;
    }
}
print(numArray)


