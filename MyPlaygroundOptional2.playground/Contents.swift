//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var  errorMessage:String? = "Not Found"
if let errorMessage = errorMessage
{
    errorMessage.uppercased()
}
//对上面的方法简写
/* 下面的语法 是 先对errorMessage 进行尝试解包 解包失败 就不执行 省了不少事*/
errorMessage?.uppercased()
/* 下面的语法 是 先对errorMessage 进行强制解包 解包失败 就会程序崩溃*/
errorMessage!.uppercased()
/*这里出现 可选型链 返回值 造成的 隐式可选型变量*/
var  uppercaseErrorMessage = errorMessage?.uppercased()

if var  uppercaseErrorMessage1 = errorMessage?.uppercased()
{
    uppercaseErrorMessage1
}

/*
 这里出现 可选型链 返回值 造成的 隐式可选型变量
 */
let message2 = errorMessage == nil ? "No Error" :errorMessage

let message3 = errorMessage ?? "No Error"


var error1:(errorCode:Int, errorMessage:String?) = (404,"Not Found")

error1.errorMessage = nil
error1.errorCode = 200

var error2:(errorCode:Int ,errorMessage:String)? = (404,"Not Found")

error2 = nil

var error3:(errorCode:Int, errorMessage:String?)? = (404,"Not Found")

/*IOS类库中 可选型*/

var  ageInput:String = "xyz"
/*
 接受字符串 并且尝试将字符串转换为整型 这里Int 函数正确返回值 就返回正确的值 但是如果 失败 则返回 nil
 */
var age = Int(ageInput)

//if let age = Int(ageInput) where age <20 {
//    print("you are good")
//}

var greeting:String = "greeting"

/*这里的range函数返回的是 range的可选型*/

greeting.range(of: "ing")
greeting.range(of: "ll")

/*
 可选型  减少了 因为空指针 引起的崩溃
 */


/*可选型 ？ 与 ！ */
var errorMessageN:String! = nil

/*这是隐式可选型  可以设置nil 在使用时  可以不解包 直接使用 但是 如果不小心nil 会导致 程序崩溃
 因此 隐式可选型声明 使用时 我们程序员一般对能保证调用使用该变量时 不会为 nil 时 使用
 */

"the message is " + errorMessageN


class City{
    let cityName:String
    /*循环引用 unowend */
  unowned  var country:Country
    init(cityName:String,country:Country) {
        self.cityName = cityName
        self.country = country
    }
}
class Country {

    let countryName:String
    var capitalcity: City!

    init(countryName:String,capitalCity:String)
    {
        self.countryName = countryName
        self.capitalcity = City(cityName: capitalCity, country: self)
    }
    
    func showInfo()  {
        print("this is \(countryName)")
        print("the capital is \(capitalcity.cityName)")
    }
}

let china = Country(countryName: "China", capitalCity: "Beijing")

china.showInfo()




