import UIKit

var greeting = "Hello, playground"

let value = arc4random_uniform(100)
print("--> \(value)")

// 1. commant

// 2. Tuple
let coordinates = (4,6)
let x = coordinates.0
let y = coordinates.1

let coordinatesNamed = (x: 2, y:3)

let x2 = coordinatesNamed.x
let y2 = coordinatesNamed.y

let (x3,y3) = coordinatesNamed

x3
y3

// 3. Boolean

let yes = true
let no = false

let isFourGreaterThanFive = 4 > 5

if (isFourGreaterThanFive){
    print("-->  참")
}else{
    print("--> 거짓")
}

/*
 if 조건...{
 // 조건이 참인 경우에 수행하는 코드를 여기
 }else {
 // 조건이 거짓인 경우에 수행하는 코드를 여기
 }*/

let a = 5
let b = 10

if (a>b){
    print("a가 크다.")
}else{
    print("b가 크다.")
}

let name1 = "Jin"
let name2 = "Jason"

let ifTwoNameSame = name1 == name2

if (ifTwoNameSame){
    print("-->  같다")
}else{
    print("--> 다르다")
}

// 4. 논리연산자, 삼항연산자

let isJason = name2 == "Jason"
let isMale = false

let jasonAndMale = isJason && isMale
let jasonOrMale = isJason || isMale

//
//if isJason{
//    greetingMessage = "Hello Jason"
//}else{
//    greetingMessage = "Hello Somebody"
//}
//print("Msg : \(greetingMessage)")

let greetingMessage: String = isJason ? "Hello Jason" : "Hello Somebody"

// 5. Scope : 변수 사용 범위
func hello() {
var hours = 50
let payPerHour = 10000
var salary = 0

if hours > 40 {
    let extraHours = hours - 40
    salary += extraHours * payPerHour * 2
    hours -= extraHours
}
salary += hours * payPerHour
}

hello()

