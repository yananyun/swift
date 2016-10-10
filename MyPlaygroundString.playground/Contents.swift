//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let str2 = String("Hello ,swift")

var emptyString = ""
var emptyString2 = String()

str.isEmpty

emptyString.isEmpty

let mark = "!!!"

str

str += mark


str


let name = "字符串插值 组织字符串"

let age = 18

let height = 1.78

let s = "My name is \(name). I'm \(age) years old. I'm \(height) meters tall."

print(s)
/*字符串易读性太差*/
let s2 = "\\\"hello\"\t\"hi\"\n bye!"
print(s2)

/*遍历字符串中的每个字符*/
for c in str.characters
{
    print(c)
}

/*swift中 字符 也是使用 双引号*/
let mark2:Character = "!"

//强制类型转换
str = " charac"
str + String(mark2)
str
str.append(mark2)
/*
 swift 中一个字符 与C 中一个字符 不一样
 C语言中一个英文字符 一个字节
 一个中文字符 两个字节
 但是swift 明显繁琐的多
 */
let englishLetter:Character = "a"
let chineseLetter:Character = "中"
//表情符
let dog:Character = "🐶"
/*unicode码来 表示swift一个字符 \u{}表示我要使用unicode码了 {}中填入*/
let coolGuy :Character = "\u{1F60E}"

var coolLetters = "abc"
coolLetters.characters.count

var chineseLetters = "慕课网"

 chineseLetters.characters.count


var coolGuys = "\u{1F60E}\u{1F60E}\u{1F60E}"

coolGuys.characters.count

/*注音符 法语*/
var cafe = "cafe"

var cafe2 = "cafe\u{0301}"

cafe.characters.count
cafe2.characters.count
/*swift语言 字符 是基于unicode的*/
cafe == cafe2


/*swift语言 字符串的 处理 功能这么多 处理起来效率 低
 swift 语言 中如何获取字符串中的字符
 索引字符串中的字符
 String.index
 每一个字符串都有一个关联的索引(index)类型，String.index，它对应着字符串中的每一个字符的位置。
 前面提到，不同的字符可能会占用不同的内存空间数量，所以要知道字符的确定位置，就必须从字符串开头遍历每一个 Unicode 标量到字符串结尾。因此，Swift 的字符串不能用整数(integer)做索引。
 使用startIndex属性可以获取字符串的第一个字符。使用endIndex属性可以获取最后的位置（其实endIndex在值上与字符串的长度相等）。如果字符串是空值，startIndex和endIndex是相等的
 */
str = "Hello, Swift"

let startIndex = str.startIndex
startIndex
str[startIndex]

let spaceIndex = startIndex
str[startIndex]
/*
 前闭后开 startIndex endIndex  endIndex.predecessor
 */







