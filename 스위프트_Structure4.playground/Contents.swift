import UIKit

struct Lecture{
    var title: String
    var maxStudents: Int = 10
    var numOfRegistered: Int = 0

    func remainSets() -> Int {
        let remainSeats = maxStudents - numOfRegistered
        return remainSeats
    }
    
    mutating func register() { //method가 stored property를 변경시키는 경우에는 mutating을 붙여야 한다
//        등록된 학생 수 증가시키기
        numOfRegistered += 1
    }
    
    // 타입 프로퍼티
    static let target: String = "Anybody want to learn something"
    
    // 타입 메소드
    static func 소속학원이름() -> String {
        return "패캠"
    }
}

var lec = Lecture(title: "iOS Basic")

//func remainSets(of lec: Lecture) -> Int {
//    let remainSeats = lec.maxStudents - lec.numOfRegistered
//    return remainSeats
//}

lec.remainSets() // 남은 좌석수 확인

lec.register()
lec.remainSets()

Lecture.target
Lecture.소속학원이름()


struct Math{
    static func abs(value : Int) -> Int {
        if value > 0 {
            return value
        } else {
            return -value
        }
    }
//    static func square (value: Int) -> Int {
//        return value * value
//    }
//    static func half (value: Int) -> Int {
//        return value/2
//    }
}

Math.abs(value: -20)

extension Math { // Math를 확장해서 필요한 method를 만들수 있다.
    // 제곱, 반값
    static func square (value: Int) -> Int {
        return value * value
    }
    static func half (value: Int) -> Int {
        return value/2
    }
}

Math.half(value: 4)
Math.square(value: 50)

let value: Int = 3

extension Int{
    func square() -> Int {
        return self * self
    }
    
    func half() -> Int {
        return self/2
    }
}

value.square()
value.half()
