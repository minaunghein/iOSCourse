//Function A function is a set of statements organized together to perform a specific task.

//let say: we calculate this process
// multiply given value with 3 and another given value with 5 and then sumup them and return
//In Mathematical way,
//let the function be F(x,y) = ax+by, where x & y is variable, a = 3,b = 5

let a = 3
let b = 5
let fxy = 5 * a + 6 * b

//In swift, we define it and ...
//This calculation required two Double-type variables as inputs and will return Double-type value to outside world
func calculate(x:Double , y :Double )->Double
{
    let a = 3.0
    let b = 5.0
    let result = a*x + b*y
    return result
}
//Make use it----------------------------------------------------------------
var c = calculate(x:7, y:5)
print(c)
var d = calculate(x:5, y:9)
print(d)
var e = calculate(x:8, y:10)
print(e)
var f = calculate(x:3, y:20)
print(f)
var g = calculate(x:10, y:20)
print(g)

//In future when we want to change above calculation 3x+5y , just change it in one place inside calculate function,
//all the operation used that function will be reflected,  without modifying line by line

//In Summary, ......
