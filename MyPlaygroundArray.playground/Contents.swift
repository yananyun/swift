//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*
 swift语言 中的 容器类
 数组 Array
 字典 Dictionary
 集合 Set
 swift 语言数组 
 有序的数据序列 
 与
 OC 中NSMutaleArray Array
 
 初始化 数组 使用 方括号
 
 数组中每个元素 使用 逗号 分隔
 
 */

var  numbers = [0,1,2,3,4]

var  voweld = ["A","E","I","O","U"]

var  numbers1:[Int] = [0,1,2,3,4]

var  voweld1:[Character] = ["A","E","I","O","U"]

/*范型*/
var  numbers2:Array<Int> = [0,1,2,3,4]
var emptyArray1:[Int] = []
var emptyArray2:Array<Int> = []
/*构造函数*/
var emptyArray3 = [Int]()
var emptyArray4 = Array<Int>()

//创建有10个Int类型元素的数组，且每个元素都为1
//swift2.2
//var array4 = Array(count: 10, repeatedValue: 1)
//swift3.0
var emptyArray5 = Array(repeating: 1, count: 10)





