//: Playground - noun: a place where people can play

import UIKit
import XCPlayground
var str = "Hello, playground"

/*
 swift中的闭包 与 OC中的闭包 一致
 
 */
var arr:[Int] = []

for _ in 0..<100{
 arr.append(Int(arc4random()) % 100)
}
func biggerNumberFirst(a:Int,b:Int) -> Bool
{
    return a > b
}

arr.sort(by: biggerNumberFirst)
 /*闭包 的基本语法*/
/*结尾闭包   Trailing Closure*/
arr.sorted() { (a:Int, b:Int) -> Bool in
    return a > b
}
arr.sorted { (a:Int, b:Int) -> Bool in
    return a > b
}
arr.sort(by: {
    (a:Int,b:Int) ->Bool in
    return a > b
})
/*一句话闭包  简化*/

arr.sort(by: {
    (a:Int,b:Int) ->Bool in return a > b
})

/* 闭包的简化*/
arr.sort(by: {a,b in return a > b })
arr.sort(by: {a,b in  a > b })
/*
 闭包简化 参数 swift 默认给的参数名  但是这种写法 语意不明 不容易维护
 */
arr.sort(by: { $0 > $1 })
arr.sort(by: >)

arr.map { (number:Int) -> String in
    var res = ""
    var number1 = number
    repeat{
     res = String(number1 % 2) + res
     number1 /= 2
    }while number1 != 0
    return res
}

let showView = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
let rectangle = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
rectangle.center = showView.center
rectangle.backgroundColor = UIColor.red

showView.addSubview(rectangle)


//XCPlaygroundPage.currentPage
/*闭包特点 内容 捕获 函数没有的特点*/
//硬编码 闭包 如何让300 动态呢
arr.sort { (a:Int, b:Int) -> Bool in
    abs(a - 300) < abs(b - 300)
}
/*内容捕获 容易引起内存泄漏 但是目前是 基本数据类型 
 内容捕获 内存不用考虑
 到后期 类 结构 时 需要考虑
 */
var num = 700

arr.sort { (a:Int, b:Int) -> Bool in
    abs(a - num) < abs(b - num)
}

/*
 这是我们第一次接触swift的引用类型
 闭包 和 函数 是引用类型
 之前的数组 字典 集合 却是值类型
 与OC 中的？？？
 */
/*
  以下是一个 函数 并且该函数的返回值 是函数式类型的
 */
func runingMetersWithPerDay(metersPerDay:Int)->()->Int
{
    var totalMeters = 0
    return {
        totalMeters += metersPerDay
        return totalMeters
    }
}

//2000
var planA = runingMetersWithPerDay(metersPerDay: 2000)
//4000
planA()
//6000
planA()
//8000
planA()

//5000
var planB = runingMetersWithPerDay(metersPerDay: 2000)
//10000
planB()

var anotherPlan = planB
// 15000
anotherPlan()
/*
 这次调用后 是15000 还是 20000 呢 这就能看出函数和闭包到底是引用类型 还是 值类型呢
 事实上 函数与 闭包 是引用类型
 */
planB()

let planC = runingMetersWithPerDay(metersPerDay: 3000)
planC()
planC()
/*
 这里planC 使用let
 我们发现
 planC =runingMetersWithPerDay(metersPerDay: 6000)
 报错
 */



