//: Playground - noun: a place where people can play

import UIKit

//:集合是一个无序的
var str = "Hello, playground"
var skillsOfA = ["swift","OC"]
/*
 集合的声明 必须显示  集合 字符串类型的集合
 数组中 元素值可以一致
 但是集合中 元素值不可以重复
 集合是无序的 查找 判重 
 集合可以保证这个集合中所有元素是唯一的（ 数组中 元素值可以一致
 但是集合中 元素值不可以重复）
 */
var skillsOfB:Set<String> = ["swift","OC"]

var skillsOfC:[String] = ["swift","OC","OC"]

var emptySet1:Set<Int> = []
var emptySet2:Set<Double> = []

/*
 集合与数组 这么紧密 发现数组可以强制类型转换为集合
 */

var  vowels = Set(["A","E","I","O","U"])
vowels.isEmpty
//由于集合是无序的 这里集合first取出的却是随机的 和数组不一样
vowels.first

vowels.contains("swift")

for skill in skillsOfB {
    print(skill)
}

let setA:Set = [1,2,3]
let setB:Set = [3,2,1]
//集合值比较
setA == setB
//集合的操作

var skillOfAA:Set<String> = ["HTML","OC"]
var skillOfBB:Set<String> = ["HTML","CSS","JavaScript"]
var skillOfCC:Set<String> = []

//向集合添加一个元素
skillOfAA.insert("Swift")
//向集合中添加一个已经存在的元素 发现集合并没有改变 因为集合不允许重复的 但是不报错
skillOfCC.insert("CSS")
skillOfCC.remove("CSS")
//集合中并没有该元素 因此返回的是可选型 如果没有删除成功则返回的是nil
skillOfCC.remove("JavaScript")

if let skill = skillOfCC.remove("HTML") {
    print("HTML is removed")
}

skillOfCC.removeAll()

/*
 集合的个性化操作  集合的 交集 并集的操作
 uinon uinonInPlace
 */
 skillOfAA = ["HTML","OC"]
 skillOfBB = ["HTML","CSS","JavaScript"]
 skillOfCC = ["swift","HTML","CSS"]

//集合不能进行加号操作 只能使用union 这里的union可以传入的数据类型 可以是数组 也可以是数组
skillOfAA.union(skillOfCC)
//集合不能进行加号操作
skillOfAA
//集合不能进行加号操作 只能使用 unionInPlace
//求交集
skillOfAA.intersection(skillOfCC)
//求集合减法 就是集合A减去A与C公共的部分 相当于求A独有的而C不具备的技能 求集合A减去交集
skillOfAA.subtract(skillOfCC)
//亦或操作(求交集的补集) exclusiveOr


var set3:Set<Int> = [1,2,3,4]
var set4:Set<Int> = [1,2,5,6]
//返回交集 {1，2}
//swift2.2
//var setInter = set3.intersect(set4)
//swift3.0
var setInter = set3.intersection(set4)
//返回交集的补集{3，4，5，6}
//swift2.2
//var setEx = set3.exclusiveOr(set4)
//swift3.0
var setEx = set3.symmetricDifference(set4)

var set5:Set = [1,2]
var set6:Set = [2,3]
var set7:Set = [1,2,3]
var set8:Set = [1,2,3]
//判断是否是某个集合的子集 set5是set7的子集 返回ture
//swift2.2
//set5.isSubsetOf(set7)
//swift3.0
set5.isSubset(of: set7)
//判断是否是某个集合的超集 set7是set5的超集 返回ture
//swift2.2
//set7.isSupersetOf(set5)
//swift3.0
set7.isSuperset(of: set5)
//判断是否是某个集合的真子集 set5是set7的真子集 返回ture
//swift2.2
//set5.isStrictSubsetOf(set7)
//swift3.0
set5.isStrictSubset(of: set7)
//判断是否是某个集合的真超集 set7不是set8的真超集 返回false
//swift2.2
//set7.isStrictSupersetOf(set8)
//swift3.0
set7.isStrictSuperset(of: set8)

/*完整的学习 
 数组：有序 （排序操作建议使用 百万数据 查找10的6次方 查找消耗On）
 集合：无序、唯一性 提供集合操作，快速查找 百万数据 复杂度 lg10的6次方 比数组高效5万倍
 （看一组成员的共同爱好求交集 求并集）
 字典：键-值数据对 键唯一性 值可能还是字典类型数据
 
 字典 集合 数组 是可以组合的 可以表达很复杂的数据结构
 
 IOS如何解析Jason数据 以上的形式就有Jason的类似
 
 算法：：：：：：
 */
//range for in
for i in 4...10
{
    i
}
for charC in "Hello".characters
{
    charC
}

var vowels2 = ["a","e","i","o","e"]

for value in vowels2
{
    value
}

for (i,value) in vowels2.enumerated()
{
    i
    value
}

var dict = [1:"A",2:"B",3:"C"]

for (key,value) in dict
{
    key
    value
}

var set = Set(vowels2)

for  vowel in set
{
  vowel
}
//可迭代

vowels2.removeAll(keepingCapacity: <#T##Bool#>)
vowels2.replaceSubrange(<#T##subrange: Range<Int>##Range<Int>#>, with: <#T##Collection#>)

dict.prefix(upTo: <#T##DictionaryIndex<Int, String>#>)

set.insert(<#T##newMember: Hashable##Hashable#>)
set.union(<#T##other: Sequence##Sequence#>)
set.prefix(through: <#T##SetIndex<String>#>)
