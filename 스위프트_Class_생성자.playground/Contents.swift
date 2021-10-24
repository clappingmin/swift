import UIKit

// 처음 코드
//struct Grade {
//    var letter: Character
//    var points: Double
//    var credits: Double
//}
//
//class Person {
//    var firstName: String
//    var lastName: String
//
//    init(firstName: String, lastName: String) {
//        self.firstName = firstName
//        self.lastName = lastName
//    }
//
//    func printMyName() {
//        print("My name is \(firstName) \(lastName)")
//    }
//}
//
//class Student: Person { // Person을 상속 받음 -> Person의 프로퍼티, 메소드 사용 가능
//    var grades: [Grade] = []
//}
//
//// 학생인데 운동선수
//class StudentAthelete: Student {
//    var minimumTrainingTime: Int = 2
//    var trainedTime : Int = 0
//
//    func train() {
//        trainedTime += 1
//    }
//}
//
//// 운동선수인데 축구 선수
//class FootballPlayer : StudentAthelete {
//    var footballTeam = "FC Swift"
//
//    override func train() {
//        trainedTime += 2
//    }
//}

struct Grade {
    var letter: Character
    var points: Double
    var credits: Double
}

class Person {
    var firstName: String
    var lastName: String

    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }

    func printMyName() {
        print("My name is \(firstName) \(lastName)")
    }
}

class Student: Person { // Person을 상속 받음 -> Person의 프로퍼티, 메소드 사용 가능
    var grades: [Grade] = []
    
    override init(firstName: String, lastName: String) {
        super.init(firstName: firstName, lastName: lastName)
    }
    
    convenience init(student: Student){
        self.init(firstName: student.firstName, lastName: student.lastName)
    }
}

// 학생인데 운동선수
class StudentAthelete: Student {
    var minimumTrainingTime: Int = 2
    var trainedTime: Int = 0
    var sports: [String]
    
    init(firstName: String, lastName: String, sports: [String]){ // 주Initialization
        // Phase 1
        self.sports = sports
        super.init(firstName: firstName, lastName: lastName)
        
        // Phase 2 : 프로퍼티나 메소드 접근 가능
        self.train()
    }
    
    // 부Initialization
    convenience init(name: String){
        self.init(firstName: name, lastName: "", sports: [])
    }
    
    func train() {
        trainedTime += 1
    }
}

// 운동선수인데 축구 선수
class FootballPlayer : StudentAthelete {
    var footballTeam = "FC Swift"
    
    override func train() {
        trainedTime += 2
    }
}

let student1 = Student(firstName: "Sumin", lastName: "Park")
let student1_1 = Student(student: student1)
let student2 = StudentAthelete(firstName: "DongBeak", lastName: "Seo", sports: ["FootBall"])
let student3 = StudentAthelete(name: "Mike")

/*
 designated(지정) vs. convenience(간편) Initialization
 - DI는 자신의 부모의 DI를 호출해야 함
 - CI는 같은 클래스의 이니셜라이저를 꼭 하나 호출해야 함
 - CI는 궁극적으로는 DI를 호출해야 함
 */
