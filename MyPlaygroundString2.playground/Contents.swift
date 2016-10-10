//: Playground - noun: a place where people can play
/*swift语言 字符串的 处理 功能这么多 处理起来效率 低
 swift 语言 中如何获取字符串中的字符
 索引字符串中的字符
 String.index
 每一个字符串都有一个关联的索引(index)类型，String.index，它对应着字符串中的每一个字符的位置。
 前面提到，不同的字符可能会占用不同的内存空间数量，所以要知道字符的确定位置，就必须从字符串开头遍历每一个 Unicode 标量到字符串结尾。因此，Swift 的字符串不能用整数(integer)做索引。
 使用startIndex属性可以获取字符串的第一个字符。使用endIndex属性可以获取最后的位置（其实endIndex在值上与字符串的长度相等）。如果字符串是空值，startIndex和endIndex是相等的
 */

import UIKit

var str = "Hello, playground"
str = "Hello, Swift"
var startIndex = str.startIndex
startIndex
str[startIndex]

var spaceIndex = startIndex
str[startIndex]
/*
 前闭后开 startIndex endIndex  endIndex.predecessor
 */
str.uppercased()
str.lowercased()
str.capitalized
str.contains("Hell")
str.hasPrefix("He")
str.hasSuffix("ft")

let s = "one third is \(1.0/3.0)"

//NSString
/*NSString String */
/*swift中是没有 隐式转换的 代码中必须表明 as ；
 两个结构体 两个类之间 可以相互类型转换 有条件；
 NSString 与 String 之间的类型转换 又可以称之为 桥接bridge
 */
let s2 = NSString(format:"one third is %.2f",1.0/3.0) as String

var string = "Hello-Swift"

startIndex = string.startIndex

var endIndex = string.endIndex
//获取某个下标后一个下标对应的字符 char="e"
//swift2.2
//var char = string[startIndex.successor()]
//swift3.0


var char = string[string.index(after: startIndex)]
//获取某个下标前一个下标对应的字符 char2 = "t"
//swift2.2
//var char2 = string[endIndex.predecessor()]
//swift3.0
var char2 = string[string.index(before: string.endIndex)]
//通过范围获取字符串中的一个子串 Hello
//swift2.2
//var subString = string[startIndex...startIndex.advancedBy(4)]
//swift3.0
var subString = string[startIndex...string.index(startIndex, offsetBy: 4)]
//swift2.2
//var subString2 = string[endIndex.advancedBy(-5)...endIndex.predecessor()]
//swift3.0
var subString2 = string[string.index(endIndex, offsetBy: -5)..<endIndex]
//获取某个子串在父串中的范围
//swift2.2
//var range =  string.rangeOfString("Hello")
//swift3.0
var range = string.range(of: "Hello")
//追加字符串操作 此时string = "Hello-Swift! Hello-World"
//swift2.2
//string.appendContentsOf(" Hello-World")
//swift3.0
string.append(" Hello-World")
//在指定位置插入一个字符 此时string = "Hello-Swift!~ Hello-World"
//swift2.2
//string.insert("~", atIndex: string.startIndex.advancedBy(12))
//swift3.0
string.insert("~", at: string.index(string.startIndex, offsetBy: 12))
//在指定位置插入一组字符 此时string = "Hello-Swift!~~~~ Hello-World"
//swift2.2
//string.insertContentsOf(["~","~","~"], at: string.startIndex.advancedBy(12))
//swift3.0
string.insert(contentsOf: ["~","~","~"], at: string.index(string.startIndex, offsetBy: 12))
//在指定范围替换一个字符串 此时string = "Hi-Swift!~~~~ Hello-World"
//swift2.2
//string.replaceRange(string.startIndex...string.startIndex.advancedBy(4), with: "Hi")
//swift3.0
string.replaceSubrange(string.startIndex...string.index(string.startIndex, offsetBy: 4), with: "Hi")
//在指定位置删除一个字符 此时string = "Hi-Swift!~~~~ Hello-Worl"
//swift2.2
//string.removeAtIndex(string.endIndex.predecessor())
//swift3.0
string.remove(at: string.index(before:string.endIndex))
//删除指定范围的字符 此时string = "Swift!~~~~ Hello-Worl"
//swift2.2
//string.removeRange(string.startIndex...string.startIndex.advancedBy(2))
//swift3.0
string.removeSubrange(string.startIndex...string.index(string.startIndex, offsetBy: 2))
var string2 = "My name is Jaki"
//全部转换为大写
//swift2.2
//string2 = string2.uppercaseString
//swift3.0
string2 = string2.uppercased()
//全部转换为小写
//swift2.2
//string2 = string2.lowercaseString
//swift3.0
string2 = string2.lowercased()
/*
 按住option 查看一个变量的相关信息 点击方法 查看函数的相关信息
 */

