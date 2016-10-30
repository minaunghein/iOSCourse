//Function A function is a set of statements organized together to perform a specific task.

//let say: we calculate this process
// multiply given value with 3 and another given value with 5 and then sumup them and return
//In Mathematical way,
//let the function be F(x,y) = ax+by, where x & y is variable, a = 3,b = 5

var a = 3
var b = 5

 

 func swap(_ x:inout Double ,_ y :inout Double )
{
    var r = y
    y = x
    x = r
}
//Make use it----------------------------------------------------------------

swap(&b, &a)
print(a)


 //In Summary, ......
