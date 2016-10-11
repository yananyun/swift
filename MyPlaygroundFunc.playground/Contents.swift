//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

print(str)
/*swift语言中的函数语法 非常丰富*/

func sayHello(name:String?) -> String
{
    return "Hello " + (name ?? "Guest")
}
sayHello(name: "immoc")
//可选型
var optionalName:String? = nil

sayHello(name: optionalName)
func printHello0(){
    //swift 中Void是一个数据类型 没有返回值
}
func printHello1() -> (){
    //swift 中Void是一个数据类型 没有返回值
}
func printHello2() -> Void{
  //swift 中Void是一个数据类型 没有返回值
}

var arr = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]

arr.append(4)
arr.contains(5)
arr.index(of: 3)
arr.remove(at: 0)
arr.removeSubrange(1..<2)
arr.removeSubrange(1...3)
arr.removeSubrange(1...4)


//函数中使用元组
func  findMaxAndMin(numbers:[Int]) ->(max:Int,min:Int)?
{
    //返回值可能为nil 因此需要返回的元组 设置为可选型
    //调用函数时 接受返回值需要解包 if let 解包
    if numbers.isEmpty {
        return nil
    }
    //注意如果传入的是空数组
    var minValue = numbers[0]
    var maxValue = numbers[0]
    for number in numbers
    {
        minValue = minValue < number ? minValue : number
        maxValue = maxValue > number ?maxValue : number
    }
    
    return (maxValue,minValue)
}

var scores:[Int]? = [202,1234,5678,334,982,555]
//避免网络连接失败 scores 获取不到数据 时的情况处理 nil
scores = scores ?? []
//上边的处理 使得下面的强制解包是安全的
if let result = findMaxAndMin(numbers: scores!) {
    print("max is \(result.max); min is \(result.min)")
}
if let result = findMaxAndMin(numbers:scores ?? []) {
    print("max is \(result.max); min is \(result.min)")
}


/*
 函数 内部函数参数名 外部函数参数名
 
 */

func sayHello2(name:String,greeting:String) ->String
{
    return "\(greeting), \(name)!"
}

sayHello2(name: "PlayGround", greeting: "Hello")


var arr2 = [1,2,3,4,5]
arr2.insert(0, at: 0)
var str2 = "Hello, PlayGround"
let startIndex = str2.startIndex
let afterIndex = str2.index(after: startIndex)
str2.replaceSubrange(startIndex..<str2.index(startIndex, offsetBy: 4), with: "---")
str2.insert("w", at: str2.index(afterIndex, offsetBy: 4))
str2.insert(contentsOf: ["a","~","b"], at: str2.index(afterIndex, offsetBy: 4))

//内部参数名 外部参数名 这样的风格不建议 使用麻烦

func sayHello3(name:String,withOut greeting:String) ->String
{
    return "\(greeting)---\(name)"
    
}
sayHello3(name: "nei bu can shu ", withOut: "wai bu can shu ")

func mutipleOf1(num1:Int , and num2:Int)->Int{
    
    return num1 * num2
    
}
func mutipleOf(num1:Int , _ num2:Int)->Int{

   return num1 * num2
    
}
mutipleOf1(num1: 4, and: 2)
//mutipleOf(num1: 4, and: 2)
mutipleOf(num1: 4, 2)


//swift 中默认参数值 与 可变参数

func sayHelloToDef(name:String,greeting:String = "Hello",punctuation:String = "!") ->String
{
    return "\(greeting), \(name)\(punctuation)"
}
//默认参数方式
sayHelloToDef(name: "2222")
//调用全参数的方式
sayHelloToDef(name: "www", greeting: "eeee", punctuation: "rrrr")

//可变参数类型
func mean(numbers:Double ... )->Double
{
    var sum:Double = 0
    //将变长参数当作一个数组看对
    for number in numbers {
        sum += number
    }
    return sum / Double(numbers.count)
}
mean(numbers: 2,3,3,5,6)

func sayHelloChange(names:String ... ,greeting:String)
{
    for name in names {
        print("\(greeting),\(name)")
    }
}

//常量参数 变量参数 inout参数

/*
 大多数函数 传入的函数参数 只是传入 不改变传入的参数值
 函数
 swift3.0 取消 取消var参数
 inout参数修饰改放到类型前
 */

func  toBinary( num:Int) ->String
{
    /*
     和OC 有区别 OC 传的行参 在函数体中可以操作 修改
     
     */
    var num = num
    var res = ""
    repeat{
        res = String(num%2) + res
        num /= 2
    }while  num != 0
    return res
}
//按引用传值
func swaptwoInts(a:inout Int ,b:inout Int)
{
    let t:Int = a
     a = b
     b = t
}
func swaptwoInts2(a:inout Int ,b:inout Int)
{
    //元组交换
    (a,b) = (b,a)
}
var x:Int = 1
var y:Int = 2
swaptwoInts(a: &x, b: &y)
x
y

func initArray(arr:inout [Int],byValue:Int)
{
    for i in 0..<arr.count
    {
        arr[i] = byValue
    }
}

var arrinit2 = [1,2,3,4,5]
initArray(arr: &arrinit2, byValue: 0)
arr
/*
 注意 swift 需要显示按引用传入
 包括字典 包括集合 都需要 具体的原因 类 结构 在探究
 
 到目前为止 所有的 整型 浮点数 字符串 容器类 数组 字典 集合
 在swift 中都是按值传入的
 */


/*
 之前都是如何定义 和  声明一个函数
 使用函数类型 在swift 中 函数 成为 变量 高级语言一般都已经支持
 
 */

func add(a:Int,b:Int) ->Int
{
    return a + b
}

let anotherAdd = add

/*
 这里我们可以看到anotherAdd 这个函数型变量
 函数型变量 函数名不需要考虑
 我们需要关心它的参数 他的参数有几个 参数的类型是什么
 以及 返回的是什么 返回的类型是什么
 */

let anotherSarHelloTo:(String?)->String = sayHello

anotherSarHelloTo("222")

var arrSort:[Int] = []

for _ in 0..<100{
 
    arrSort.append(Int(arc4random()) % 100)

}
arrSort
arrSort.sort()
arrSort
func bggerNumberFirst(a:Int,b:Int)->Bool
{
    if a > b {
        return true
    }
    return false
}
func bggerNumberFirst2(a:Int,b:Int)->Bool
{
    return a > b
    
}
func cmpByNumberString(a:Int,b:Int)->Bool
{
    return String(a) < String(b)
}

func near500(a:Int,b:Int) -> Bool
{
    return abs(a-500) < abs(b-500) ? true : false
}

arrSort.sort(by: near500)


/*
 函数式编程 初步
 */
func changeScores1(scores22:inout [Int] )
{
    for (indexValue ,scoreValue) in scores22.enumerated() {
        scores22[indexValue] = Int(sqrt(Double(scoreValue)*10))
    }
}
func changeScores2(scores33:inout [Int])
{
    for (indexV,scoreV) in scores33.enumerated() {
        scores33[indexV] = Int(Double(scoreV) / 150.0 * 100.0)
    }
}

var scoreArr = [36,61,78,89,99]

changeScores1(scores22: &scoreArr)

var scoreArr2 = [88,101,124,137,150]

changeScores2(scores33: &scoreArr2)


//高阶函数
func changeScores(scores:inout [Int],by changeScore:(Int)->Int)
{
    for (index,score) in scores.enumerated() {
        
        scores[index] = changeScore(score)
    }
}
func  changeScoreInt(score:Int)->Int
{
    return Int(sqrt(Double(score))*10)
}
func isPassOrFail(score:Int)->String
{
    return score < 60 ? "Fail" : "Pass"
}

//再抽象 map 操作
scoreArr2.map(isPassOrFail)

//filter
func fail(score:Int) -> Bool
{
    return score < 60
}

scoreArr2.filter(fail)
//reduce
func addReduce(num1:Int,num2:Int) -> Int{
    return num1 + num2
}

//scoreArr2.reduce(0) { (<#Result#>, <#Int#>) -> Result in
//    <#code#>
//}



