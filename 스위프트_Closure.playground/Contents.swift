import UIKit

// closure : 이름이 없는 메소드

//var multiplyClosure: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in
//    return a * b
//}

//var multiplyClosure: (Int, Int) -> Int = { $0 * $1 } // 줄여서 이렇게 사용 가능


var multiplyClosure: (Int, Int) -> Int = { a, b in
    return a * b
}

 let result = multiplyClosure(4, 2)

func operateTwoNum(a: Int, b: Int, operation: (Int, Int) -> Int) -> Int {
    let result = operation(a,b)
    return result
}

operateTwoNum(a: 4, b: 2, operation: multiplyClosure)

var addClosure: (Int, Int) -> Int = {a,b in
    return a + b}


operateTwoNum(a: 4, b: 2, operation: addClosure)

operateTwoNum(a: 4, b: 2, operation: {a, b in return a / b})

let voidClosure : () -> Void = {    // 입력과 반환이 없는 Closure
    print("iOS 개발자 짱, 클로저 사랑해")
}

voidClosure()

// --- Capture Values

var count = 0

let incrementer = {
    count += 1
}

incrementer()
incrementer()
incrementer()
incrementer()

count

