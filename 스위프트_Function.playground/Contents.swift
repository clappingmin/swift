import UIKit

func printName(){
    print("---> My name is Sumin")
}

printName()

// param 1개
// 숫자를 받아서 10을 곱해서 출력한다

func printMultipleOfTen(value: Int){
    print("\(value) * 10 = \(value * 10)")
}

printMultipleOfTen(value: 5)

// param 2개
// 물건값과 갯수를 받아서 전체 금액을 출력하는 함수

func printTotalPrice(price: Int, count: Int){
    print("Total Price: \(price * count)")
}

printTotalPrice(price: 1500, count: 5)

//func printTotalPrice(_ price :Int, _ count: Int){
//    print("Total Price: \(price * count)")
//}
//
//printTotalPrice(1500, 5)

printTotalPrice(price: 1500, count: 5)
printTotalPrice(price: 1500, count: 10)
printTotalPrice(price: 1500, count: 7)
printTotalPrice(price: 1500, count: 1)


func printTotalPricewithDefaultValue(price: Int = 1500, count: Int){
    print("Total Price: \(price * count)")
}

printTotalPricewithDefaultValue(count: 5)
printTotalPricewithDefaultValue(price: 2000, count: 3)

func totalPrice(price: Int, count: Int)-> Int {
    let totalPrice = price * count
    return totalPrice
}

let calculatedPrice = totalPrice(price: 10000, count:77)
calculatedPrice



// 1. 성, 이름을 받아서 fullname을 출력하는 함수 만들기
// 2. 1번에서 만든 다음에, 파라미터 이름을 제거하고 fulname 출력하는 함수 만들기
// 3. 성, 이름을 받아서 fullname return 하는 함수 만들기

func printFullname(_ firstname : String,_ lastname: String) -> String {
    print("---->My name is \(firstname) \(lastname)")
    
    return firstname + lastname
}

let name = printFullname("Sumin","Park")

print(name)

// 고급 기능
// 오버로드
func printTotalPrice1(price: Int, count: Int) {
    print("Total price: \(price * count)")
}

func printTotalPrice1(가격: Int, 갯수: Int) {
    print("Total price: \(가격 * 갯수)")
}

func printTotalPrice1(price: Double, count: Double) {
    print("Total price: \(price * count)")
}

// In-out parameter

var value = 3
func incrementAndPrint(_ value : inout Int){
    value += 1 // value를 바꿀 수 없다
    print(value)
}

incrementAndPrint(&value)

// 함수의 인자로 함수를 넘기기

func add (_ a: Int, _ b: Int) -> Int{
    return a + b
}

func abstract (_ a: Int, _ b: Int) -> Int{
    return a - b
}

var function = add
function(4,2)

function = abstract
function(4,2)

func printResult(_ function:(Int, Int)-> Int, _ a:Int, _ b: Int){
    let result = function(a,b)
    print(result)
}

printResult(add, 10, 5)
printResult(abstract,10,5)
