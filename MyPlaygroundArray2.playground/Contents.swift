//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var numbers = [1,2,3,4,5]

var vowels = ["A","E","I","O","U"]

let vowels2 = ["A","E","I","O","U"]

var emptyArray = [Int]()

vowels.first

vowels.last

emptyArray.isEmpty

emptyArray.first

//通过索引来获取数组元素 程序员需要考虑数组越界问题
vowels[0]

//强制解包 也是安全的 但是安全性 不是swift语言和编译器来保证 而是需要程序猿

if let firstVowel = vowels2.first {
    print("The first vowel is " + firstVowel)
}

vowels2.first!
vowels[vowels.count-1]

//return optional value
numbers.min()
numbers.max()
numbers.contains(2)
vowels.contains("A")

vowels.index(of: "A")

for index in 0..<numbers.count {
    numbers[index]
}

for (i,vowel) in vowels.enumerated() {
    
    print("\(i+1):\(vowel)")
    
}

var oneToFive = [1,2,3,4,5]

/*
 数组 有序的数据集合 比较两个数组的内容是否一样 （如果数组中的 值一样 顺序不一样 返回false）
 只有值一样 顺序一样 才返回 true
 
 在OC C++ JAVA中 数组是引用 == 判断的是引用 == 是不成立的
 而在swift中 == 判断的是值 这里的== 比较两个数组 比较两个浮点数 比较两个字符串 没什么区别
 后边 对于引用 比较使用===
 
 */
numbers == oneToFive

/*
 获取一个已经创建的数组的信息 查
 学习或创建一个数据结构时  主要是 增删改查
 
 
 */
var courses = ["course1" ,"vourses2"]

courses.append("append new element")
print(courses)

courses += ["前后数据类型要一致"]
print(courses)

courses .insert("qian hou not int", at: 0)
print(courses)

courses.removeLast()
print(courses)

courses.removeFirst()
print(courses)

//remove 要考虑越界
courses.remove(at: 3)
print(courses)
//remove range 要考虑数据越界问题
courses.removeSubrange(0..<2)
print(courses)
courses.removeAll()
print(courses)

courses = ["course1" ,"vourses2","vourses3","vourses4","vourses5","vourses6"]

/*以上是 增加 删除 操作  下面 介绍改 和增删 都要考虑数组越界*/
  courses[0] = "xiugai"
    courses[1...3] = ["1","2","3"]
/*修改多个元素 区间修改*/
courses[1..<3] = ["前闭后开1..<3"]

/*
 二维数组
 
 
 */
var board = [
    [1024,16,2,0],
    [256,4,2,0],
    [64,2,0,0],
    [2,0,0,0]]

board[0]
board[0][0]

board.count
board[0].count

/*二维数组 一个纬度 添加元素*/
board[0].append(0)

/*二维数组 添加元素 就是添加一个纬度*/
board.append([0])

/*两个二维数组的合并*/
board += [[0,0,0]]

/*
 回到OC 中的NSArray
 是一个类 swift 中就很少用到NSArray
 swift中array是一个结构
 OC中是一个类
 */
var array1:[Int] = []

var array2 = [1,2,3,4] as NSArray

var array3:NSArray = [1,"Hello",3,0]

/*
 OC 语言 int double string 这种基本数据 都被包装数据结构
 NS NextStep cocoalib
 */






