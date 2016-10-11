//: Playground - noun: a place where people can play
/*swift 中字典 与 集合
 字典 存储 键-值  数据对的无序数据集
 键 key 值 value
 swift 雨燕 快速
 python 大蟒
 JAVA 爪洼岛 位于印尼
 groovy 绝妙的 时髦的
 使用方括号把字典内容包起来
 每个数据对 使用分号分开
 每个键值对 键与值使用 冒号分开
 和数组一样 字典的键和值的数据类型必须固定
 */
import UIKit

var str = "Hello, playground"
//:ssss结合

var dict:[String:String] = ["swift":"雨燕，快速" ,"python":"大蟒","java":"爪洼岛","groovy":"绝妙的,时髦的"]

var dic2:Dictionary<String,String>
 = ["swift":"雨燕，快速2" ,"python":"大蟒2","java":"爪洼岛2","groovy":"绝妙的,时髦的2"]

var emptyDictionary:[String:Int] = [:]

var emptyDictionary2:Dictionary<Int,String> = [:]

var emptyDictionary3 = [String:String]()

var emptyDictionary4 = Dictionary<Int,Int>()

//使用键访问数据 返回的值是可选型
print(dict["swift"])

if let value = dict["swift"] {
    print("swift 意思是 \(value)")
}

//键值对的个数
dict.count
//检查字典是否为空
dict.isEmpty
/*
 获取字典所有的键 数组 但是默认返回的不是数组 返回的是lazymapcollection
 */
Array(dict.keys)
Array(dict.values)

/*如果只是遍历 key value 无需 类型转换*/

for (key,value) in dict{
    print("\(key):\(value)")
}
let  dict2 = [1:"A",2:"B",3:"C"]
let dict3 = [1:"A",3:"C",2:"B"]

/*
 值比较 两个字典 这两个返回的是true 证明 字典的无序
 同时还需要注意字典的键必须是唯一的 一个字典中不能出现相同的key
 */

dict2 == dict3


/*字典的增删改  那么这里就需要使用var 声明 就不能使用let*/

 var user = ["name":"dyn","paswd":"123","occupation":"programmer"]
//修改
user["occupation"] = "passd2"
//updateValue 返回的是旧值
user.updateValue("imooc", forKey: "paswd")

let oldPasswd = user.updateValue("imooc2", forKey: "paswd")
if let oldPasswd = oldPasswd, let paswd = user["paswd"] {
    
}

 //添加
user["email"] = "sssssADD"

user

user.updateValue("12@qq.com", forKey: "website")

/*发现 字典不同于数组 修改字典时 不用考虑 越界
 因为修改时 如果字典中没有 就会变成添加了
 */

//删除
user["website"] = nil
user

user.removeValue(forKey: "email")
user

if let email = user.removeValue(forKey: "email"){
 print("电子邮箱\(email)删除成功")
}
//整个字典的清空
user.removeAll()


