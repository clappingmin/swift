import UIKit

/*{(parameter) -> return type in
    statement
    ...
}*/

// ex 1: Simple Closure

let choSimpleClosure = {
    
}

choSimpleClosure()

// ex 2 : 코드블록을 구현한 Closure

let SimpleClosure = {
    print("Hello, Closure")
}

SimpleClosure()


// ex 3 : 인풋 파라미터를 받는 Closure

let inputClosure: (String) -> Void = { name in
    print("Hello, Closure 나의 이름은 \(name)입니다.")
}

inputClosure("Sumin")


// ex 4 : 값을 리턴하는 Closure

let returnClosure: (String) -> String = { name in
    let message = "Hello, Closure 나의 이름은 \(name)입니다."
    return message
}

print (returnClosure("Sumin2"))


// ex 5 : Closure를 파라미터로 받는 함수 구현

func someSimpleFunction (choSimpleClosure : () -> Void){
    print("함수에서 호출이 되었다.")
    choSimpleClosure()
}

someSimpleFunction(choSimpleClosure: {
    print("Hello, closure에서 호출")
})

// ex 6 : Trailing Closure : 인자들 중에 제일 마지막에 closure인 경우 생략 가능

func someFunction (message: String, choSimpleClosure : () -> Void){
    print("함수에서 호출이 되었다. \(message)")
    choSimpleClosure()
}

someFunction(message: "마지막 예제", choSimpleClosure: {
    print("Hello, closure에서 호출")
})

someFunction(message: "마지막 예제") { // closure를 생략한 경우
    print("Hello, closure에서 호출")
}
