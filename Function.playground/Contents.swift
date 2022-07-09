import UIKit


//1.函数基础
func printMyName() {
    print("My name is Matt Galloway.")
}

printMyName()
// My name is Matt Galloway.


//1.1 函数参数
func printMultipleOfFive(value: Int) {
    print("\(value) * 5 = \(value * 5) ")
}
printMultipleOfFive(value:10)
//10 * 5 = 50


//1
func printMultipleOf(multiplier: Int, andValue: Int)  {
    print("\(multiplier) * \(andValue) = \(multiplier * andValue)")
}
printMultipleOf(multiplier: 4, andValue: 2)
//4 * 2 = 8

//2
func printMultipleOf(multiplier: Int, and value: Int) {
    print("\(multiplier) * \(value) = \(multiplier * value)")
}
printMultipleOf(multiplier: 4, and: 2)
//4 * 2 = 8

//3
func printMultipleOf(_ multiplier: Int, and value: Int) {
    print("\(multiplier) * \(value) = \(multiplier * value)")
}
printMultipleOf(4, and: 2)
//4 * 2 = 8

//4
func printMultipleOf1(_ multiplier: Int, _ value: Int) {
    print("\(multiplier) * \(value) = \(multiplier * value)")
}
printMultipleOf1(4, 2)
//4 * 2 = 8


//5 默认值 和 printMultipleOf1 是同一个函数
func printMultipleOf2(_ multiplier: Int, _ value: Int = 1) {
    print("\(multiplier) * \(value) = \(multiplier * value)")
}
printMultipleOf2(4)
//4 * 1 = 4

// 1-4 分别是不同的函数，而4和5是同一个函数


//1.2 返回值, 单个语句可以简化删除 return
// 返回 整数 Int
func multiply(_ number: Int, by multiplier: Int) -> Int {
    return number * multiplier
}
let result = multiply(4, by: 2)



//返回 元组(Int,Int)
func multiplyAndDivide(_ number: Int, by factor: Int) -> (product: Int, quotient: Int) {
    return (number * factor, number / factor)
}
let results = multiplyAndDivide(4, by: 2)
let product = results.product
let quotient = results.quotient




//1.3 高级参数处理 inout
//让函数直接更改参数
//在参数类型之前的 inout 表示应该复制这个参数，在函数内使用的本地副本，并在函数返回时复制回去。
func incrementAndPrint(_ value: inout Int) {
    value += 1
    print(value)
}
var value = 5
incrementAndPrint(&value)
print(value)
//6


//1.4 重载
func getValue() -> Int {
    31
}
func getValue() -> String {
    "Matt Galloway"
}

let valueInt: Int = getValue()
//31
let valueString:String = getValue()
//"Matt Galloway"



// 2. 函数作为变量
func add(_ a: Int, _ b: Int) -> Int {a + b}
var function = add
function(4,2) //6


func subtract(_ a: Int, _ b:Int) -> Int {a - b}
function = subtract
function(4,2) //2

func printResult(_ function: (Int, Int) -> Int, _ a: Int, _ b:Int) {
    let result = function(a,b)
    print(result)
}
printResult(add, 4, 2) //6

// 2.1 获得没有返回
/// Calculates the average of three values
/// - Parameters:
///   - a: The first value.
///   - b: The second value.
///   - c: The third value.
/// - Returns: The average of the three values.
func infiniteLoop() -> Never {
    while true {
    }
}
