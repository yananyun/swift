//: Playground - noun: a place where people can play
/*swift 2014年推出 经历swift2.1 到目前 2016 swift3.0  基础开始swift2.1
 第一 路线
 变量  常量
 基本类型
 程序基本结构
 函数的定义
 数组 字典 集合
 结构 类的定义
 协议和代理
 闭包
 第二 了解swift语言  与IOS平台的开发
 
 第三  swift语言 与 Objective-C语言
 
 独立开发者 全新的产品
 旧产品 维护公司找工作 需要Objective-C
 
 第四 Objective-C迁移到swift
 https://swift.org
 
 2016 01 05 swift 2.2
 swift is open-source
 2016 09 swift 3.0

 第五 cocoa library
 对于IOS核心类库 cocoa library 是用OC开发的
 
 第六 playground 初探 教程 多是xcode7.2.1
 现阶段是xcode8.0 IOS8时代 推出swift时 推出了playground 有点类似python语言的 终端
 
 
 
 */
/*加载IOS中基础的cocoalibrary 库*/
import UIKit


var str = "Hello, playground"
 str += " :)"
print(str)
let a = 100
let b = 200
a+b
print(a+b)
/*playgroud 不仅可以实时为我们展现 变量的值 也可以在循环中为我们 绘制 图标*/
var value = 2
while value < 1000{
    value *= 2
}

var sina = -8.0
while sina <= 8.0{
 sin(sina)
    sina += 0.1
}
/*在playground中 进行 除了对数据  一定程度的界面的编写 加载cocoalibrary
 实验一些界面的交互操作
 */
/*
 由于playground中程序是 实时运行的 所以 下部的运行按钮 没什么用 但是要是需要 代码从头 再运行一遍 我们可以使用这个 运行
 */

/*
 swift中常量 与 变量
 let 声明常量  swift 特意提出 常量的概念  
 var 变量
 */
  let  maxNum = 1000
//maxNum = 2000 无法修改
 var index = 2
index = 3
//swift语言 在语句后 不一定要加分号

/*
 swift语言 javascript python 不是弱类型语言
 依旧是强类型 当我们给一个变量赋值后 会自动赋值类型
 Type inference 
 如果声明的变量赋值整型数据
 之后再对给变量赋值字符串时 发现swift给出警告 数据类型错误
 
 使用苹果的option 可以查看 变量的具体信息 可以看到系统推断的变量的类型
 我们不习惯  想声明变量 并想显示的声明变量的数据类型
 */
 var x = 1, y = 2, z = 3

var website:String = "sssss"

var h , j ,k :Double
/*
 swift 语言中常用的类型
 Int Float Double
 */
var mInt:Int = 80
Int.max
var imUint:UInt = 80
UInt.max
/*
 在计算机中 声明整型 该变量的存储空间 是有限的
 计算机汇编 底层 对于Int 的存储空间 最大小值
 swift 语言 安全在于 这里的体现 当你给变量赋值 可能会溢出 swift 会给出警告
 
 由于swift 可能用到嵌入式 需要显示的来表明该整型变量到底需要多少存储空间来存储
 Int8 Int16 Int32 Int64
 
 上边是讲述整型的类型上的不同
 下边看整型赋值方式的不同
 可以使用二进制 八进制 或者 十六进制来给整型赋值
 
 
 
 */
//十进制
let decimalInt: Int = 17
//二进制
let binaryInt:Int = 0b10001
//八进制
let octalInt:Int = 0o21
//
let hexInt:Int = 0x11
//大数赋值 swift 三位一组 分割 创新
let bignum = 1_000_000

/*
 swift 语言中 
 Float 单精度
 Double 双精度
 汇编学习中 对于精度差别的理解
 3.1415926 float 竟然精度不到
 
 对于整数 与 浮点数 运算 涉及到类型转换的问题
 
 
 */

let imFloat:Float = 3.1415926
let imDouble:Double = 3.1415926

let xInt:UInt16 = 100
let yInt:UInt8 = 20

/*
 两个不同的类型进行数据运算的时候 开发者需要显示进行显示的类型转换
 xInt + yInt 这样直接运算会报错
 xInt + UInt16(yInt) 正常
 
 */
xInt + UInt16(yInt)
/*这里需要注意我们同样做了数据类型的转换 但是 我们从大数据类型转换到小数据类型 需要注意可能会溢出
 */
UInt8(xInt) + yInt

let xDflaot:Double = 3.0
let yDfloat:Float = 0.3
xDflaot + Double(yDfloat)

let integer = 3
/*这里小数没有指明它的数据类型 默认是double
 IOS 中的浮点数 为界面开发 涉及的浮点数
 CGFloat
 */
let fraction = 0.1415926
let pi = Double(integer) + fraction

let red:Float = 0.2
let green:Float = 0.5
let blue:Float = 0.3
/*这里界面需要传CGFloat  所以上面的 red green blue 不能传入 数据类型不对 */
UIColor(displayP3Red: 0.2, green: 0.3, blue: 0.5, alpha: 1.0)

/*布尔类型 与 if 语句*/

let imTrue:Bool = true
let imFalse = false

/*
 if 语句 大括号不能省略
 if 语句 需要加圆括号吗  加圆括号 实际上是一个运算符 运算的优先级
 else 语句 大括号不能省略
 */
if imTrue{
    print("I'm True")
}

if imFalse{
    print("Im false")
}else if 3 + 4 == 7 {
     print("I'm True")
}

/*需要注意swift 中 对于 1 if语句不支持  这也体现了swift 语言对于 数据类型的严谨*/

let avalue1 = 1
if avalue1 == 1
{
   print("if 语句")
}

/*
 python语言中 元组  Tuple
 所谓元组就是将多个不同值放在一个数据中
 元组的赋值 使用小括号中 写入各个数据 每个数据之间使用逗号分隔
 元组 可以存放的各个值的数据类型可以不一致
 */

 var ponit = (5,2)
var httpResponse = (404,"NotFound")
/*元组的显示的声明 赋值*/
var point2:(Int,Int) = (200,100)
var httpResponse2:(Int,String) = (200,"OK")
/*
 具体使用一个元组 关键是将一个数据中的每个分量都适用起来
 方法一: 解包的方式
 方法二:
 */
/*方法一: 解包的方式*/
let (xPoint,yPoint) = point2
xPoint
yPoint
/**/
let (statusCode,statusMessage) = httpResponse2
statusCode
statusMessage
/*很明显 这里其实是 定义了 let statusCode let statusMessage 并与元组中分量的值对应起来
 所以我们可以 用var 接受 以后可以 对该值修改 用let 就不可以
 */
var (statusCode2,statusMessage2) = httpResponse2
/*
 元组 取值 我们可以 使用点语法 索引来取值
 */
point2.0
point2.1

/*
 swift 定义元组时 支持 为元组的各个分量赋一个名字的值
 这样定义后我们可以使用 点语法 名字来取值
 命名元组分量的 元组声明
 */
let point3 = (x:3,y:2)
point3.x
point3.y
let point4:(x:Int, y:Int) = (10,5)
point4.x
point4.y


let loginResult = (true,"swift2.0")

/*解包的方式 来使用元组时 可以忽略一些暂时不需要使用的值*/
let (isLoginSuccess,_) = loginResult


if isLoginSuccess {
    print("Login Success")
}

/*
 元组适用于轻量级的数据的聚合
 */

/*
 基本数据类型 基本完毕
 没有具体讲String 类型  String 还有很多对应的API以后细讲
 使用双引号  与 C C++ 一致
 swift 语言中只能使用双引号 不和javascript 一样 使用单引号
 IOS框架中 变量类型的名称  首字母大写
 我们声明的函数名 变量名 我们首字母小写 驼峰结构
 swift 小特性  变量名 不一定要使用英文 也可以使用中文
 
 print 函数
 
 */
print (x,y,z)
print (x,y,z,separator:" -- ")
print (x,y,z,separator:"-",terminator:":)")
print ("hello")
print (y,"*",z,"=",y*z)
print("\(y) * \(z) = \(y*z)")
