//: Playground - noun: a place where people can play

/*
 通常语言中 赋值语句 不仅讲值 赋给变量
 还带有返回值 但是swift 中 不 支持
 单目运算符 取正 取负
 a + b  +a              a++
 a - b  -b              a--
 a  b                  --a
 a / b                  ++a
 a  b
 */
import UIKit

var str = "Hello, playground"

var a = 3
if (a == 1) {
    print("a=1")
}
if a != 1 {
    print("a=1")
}



var b:Double = 2.5
var c:Double = 1.2
let d = 2
let e = 1
d % e
//Double(b)%Double(c)
//b % c

var x = -100
var y = 100
var xx = +x
var yy = -y
/*
 预先警告＃3：有些Swift 2.2的东西已经过时了，并且被删除了。这包括++，--，C风格的for循环，元组语法等等。
 */
//var bb = ++x
//var cc = x++

/*
 比较运算符
 ==
 <=
 >=
 !=
 <
 >
 引用变量的比较运算符（开发中 使用类的时候 使用）
 ===
 !==
 
 逻辑运算符
 !a
 a && b
 a || b
 */


let money = 100
let price = 70
if money >= price{
    print("Buy it")
}

let capacity = 30
let volume = 50
if money >= price && capacity >= volume
{
    print("Buy it")
}

var isUserNameOK = false
var isPasswordOK = false
var isPhoneNumOK = true
var isPhoneCodeOK = false

if (isUserNameOK && isPasswordOK ) || (isPhoneNumOK && isPhoneCodeOK)
{
    //&&与的优先级高于||或
    print("loginin  success")
    //可选型 与 最短路原则
}

/*
 三目 运算符
 question? answer1 :answer2
 判断question是否真 真则取1的值 假取2的值
 */

var battery = 21
var batteryColor:UIColor
/*swift 语言 对于 常量 与 变量 都必须初始化才能使用*/
batteryColor =  battery <= 20 ?UIColor.green :UIColor.red
/*
 python中有类似语法
 java OC C C++中没有这个概念
 区间运算法
 三个点 两个点小于号
 闭区间运算符 [a,b] a...b
 前闭后开运算符 [a,b) a..<b
 for 变量名 in  范围 ；
 范围运算符与循环结合使用
 
 */
for index in 1...10
{
    /*
     这里的 index 是一个let constant常量 循环中不能修改
     */
    print(index)
}

for index in 0..<10
{
    index
}
let courses = ["1","sss","ssss"]
for i in 0...courses.count-1
{
    i
}
for i in 0..<courses.count
{
    /*C++中前闭后开*/
    i
}
/*还有一些高级运算符*/

/*
 计算机程序中
 顺序结构  
 循环结构  
 选择结构
 */
for i in -99...99{
    i * i
}

var result = 1
var base = 2
var power = 10

for _ in 1...power
{
    result *= base
}
result

/*
 for  initialization; condition
 increments
 {
 statements
 }
 */
/*Swift 3.0 版本将会去掉沿用已经的 C 风格循环语法， 又是向现代开发语言的一次迈进*/
//for var i = -99 ;i <= 99 ; i++
//{
//}

for (index,num) in courses.enumerated()
{
    /*
     不难看出，其实循环中的每一项都是一个元组(Tuple)，这个元组的第一项是当前的索引， 第二项是当前的数组元素。 那么我们就可以推理出， enumerate 函数其实就是对 numberList 数组做了一个变换，原来它是一个 Int 类型的数组，经过变换后，成为了 (Int, Int) 元组类型的数组。
     */
    print(index,num)
}
/*
 循环变量的初始化
 循环结束的条件
 循环变量的变化
 循环体
 initialization
 while condition
{
 statements
 increments
 }
 */
var awin = 0
var bwin = 0
var game = 0


while awin < 3 && bwin < 3
{
    game += 1
    /* 0 1 2 3 4 5*/
    let aarc = arc4random_uniform(6) + 1
    let barc = arc4random_uniform(6) + 1
    
    if aarc > barc {
    
        print("a win")

        awin += 1
    }else if aarc < barc
    {
        print("bwin")
        bwin += 1
       
    }else{
    print("draw")
      
    
    }
    
    
}
game

/*
 其他语言 do while 循环 至少要执行一次的循环
 swift 语言中 被错误处理的情况占用
 repeat while
 */
var abool = false
var bbool = false

repeat{
    let a2 = arc4random_uniform(6) + 1
    let b2 = arc4random_uniform(6) + 1
    
    if (a2 > b2){
        abool = true
    }else if (a2 < b2)
    {
        bbool = true
    }else
    {
        abool = false
        bbool = false
    }
    
}while !abool && !bbool


/*
 switch some value to consider {
 
 case value1:
 respond to value1
 
 case value2:
 respond to value2
 
 case value3:
 respond to value3
 
 default :
 
 }
 */

let rating = "A"
/*
 C++ C JAVA 中 switch语言 只支持整型
 但是swift 的switch 语句却支持多个数据类型
 bool 整型 字符串 都可以
 swift switch语句 default 一般不省略 default
 但是要省略 怎么做
 
 只有穷举 才能省略
 要么使用 空语句 模式
 */
switch rating
{
    /*swift中 switch 的case 语句中 至少有一段可执行语句*/
    case "a","A":
    print("Great!")
    case "B":
    print ("Just so - so")
    case "C":
    print ("it's bad")
    default:
    print("Error")
}
switch rating
{
    /*swift中 switch 的case 语句中 至少有一段可执行语句*/
case "a","A":
    print("Great!")
case "b","B":
    print ("Just so - so")
case "c","C":
    print ("it's bad")
default:
    break
}

let  score = 90
switch score
{
case 0:
    print ("you get egg")
case 1...60:
    print ("loser")
case 61...100:
    print("pass")
default:
    break
    
}

let point:(x:Int,y:Int) = (0,0)

switch point {
/*switch 语句新的 关键字  fallthrough*/
case (0,0):
    print("origin")
    fallthrough
case (_,0):
    print("x-axis")
     fallthrough
case (0,_):
    print("y-axis")
default:
    break

}

switch point {
    
case (0,0):
    print("origin")
case let (xP,0):
    print("x-axis")
case let (0 , yP):
    print("y-axis")
default:
    break
    
}

/*
 swift 中 控制转移  continue break ；而fallthrough（只使用在switch中）
 x^4 - y^2 = 15*x*y
 还有return throw
 return 用在函数
 throw
 */
var gotAnswner = false
for m in 1...300
{
    for n in 1...300
    {
        if m*m*m*m - n*n == 15*m*n{
        
            gotAnswner = true
            print(m,n)
            
         break
        }
    }
    if gotAnswner {
        break
    }
}
/*
 给最外层的循环 起一个名字 在使用break时 后边指明
 我们可以给不同 循环结构 选择结构 起名字 控制转移
 这种控制转移 相当于goto语句  不恰当的使用 难以调试 维护 bug多出
 */
findAnswer:
for m in 1...300
{
     for n in 1...300
     {
        if m*m*m*m - n*n == 15*m*n{
        
        print(m,n)
            break findAnswer
        }
    }
}


/*
 switch 语句中 case 中使用 where语句
 swift中的where关键字
 switch some value to consider {
 
 case value1:
 respond to value1
 
 case value2 where condition:
 respond to value2
 
 case value3:
 respond to value3
 
 default :
 otherwise,do something else
 
 }

 */
switch point {
    
case (0,0):
    print("origin")
case let (xP,0):
    print("x-axis")
case let (0 , yP):
    print("y-axis")
default:
    break
    
}

switch point {
    
case (0,0):
    print("origin")
case let (xP,yP) where xP == yP:
    print("x-axis x==y")
case let (xP , yP) where xP == yP:
    print("y-axis x==y ")
default:
    break
    
}
let age = 19
if case 10...19 = age  {
    print("you are a teenager")
}
if case 10...19 = age , age >= 18{
    print("you are a teenager and in a college")
}

/*swift 1.2 后推出的 guard */

func buy(money:Int ,price:Int, capacity:Int ,volume:Int)
{
    if money >= price{
    
    if(capacity >= volume)
    {
        print("I can buy it")
        print("\(money-price) Yuan left")
        print("\(capacity-volume) cubic meters left")
        }else
    {
        print("Not enough capacity")
        }
    }else
    {
    
        print("Not enough money")
        
    }

}

func buy2(money:Int ,price:Int, capacity:Int ,volume:Int)
{
    guard money <= price else {
        print("Not enough money")
        return
    }
    guard capacity <= volume else {
        print("Not enough capacity")
        return
    }
    print("I can buy it")
    print("\(money-price) Yuan left")
    print("\(capacity-volume) cubic meters left")
}
















