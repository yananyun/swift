//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
/*
  null nil 与swift 可选型 nil 
 在OC JAVA 中 代表
 nil cannot be assigned to int
 发现可选型 就是该变量 能不能置nil
 var color : UIColor = nil 报错
 事实上 可选型 要能使用 必须与其他类型共存
 var color :UIColor? = nil 正确
 需要注意
 可选型可以让我们在具体的数据类型与nil之间进行选择
 可选型声明时 必须 显示声明变量的数据类型
 var mInt = 405
 var errorCode:Int? = nil
 errorCode是整型可选型 可以被 mInt 赋值
 errorCode = mInt 正确
 mInt是整型 不能被errorCode赋值
 mInt = errorCode 报错
 */
var mInt = 405
var errorCode1:Int? = nil
//errorCode是整型可选型 可以被 mInt 赋值
errorCode1 = mInt
//mInt是整型 不能被errorCode赋值
//mInt = errorCode
var color :UIColor? = nil

var errorCode2:String? = "404"
/*可选型的 解包*/
print(errorCode2)
/*
 发现可选型不能直接使用 要使用可选型存储的数值 那么需要解包 wrap；
 方法1 强制解包是 编码时 加 ! 但是这是强制的解包 ，这种解包 程序可能会崩溃 当解包时 该变量真的为nil 则 崩溃 ;
 "The errorCode is" + errorCode2!
 方法2 解包if nil 判断
 方法3 解包if let 判断
 */
"The errorCode is" + errorCode2!

if errorCode2 != nil{
"The errorCode is" + errorCode2!
}else
{
    "No error"
}

if let unwrappedErrorCode = errorCode2
{
    /*
     if 语句中 直接声明一个变量 这个语法 其实 就是尝试 对变量解包 并把解包后的值 赋值给 我们声明的变量
     我们观察变量的数据类型 是String类型 而errorCode2 是String可选型
     我们称此为if let 可选型解包
     */
    "The errorCode is" + unwrappedErrorCode
}

var errorMessage:String? = "Not Found"

if let errorCode = errorCode2
{
    if let errorMessage = errorMessage {
         "The errorCode is" + errorCode + "the error message is" + errorMessage
    }
}

//if let errorcode = errorCode2,errorMessage = errorMessage where errorcode == "404" {
//    
//}

//optional chaining


