import UIKit

// 처음 주어진 코드
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
//class Student {
//    var grades: [Grade] = []
//
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
}

let sumin = Person(firstName: "Sumin", lastName: "Park")
let dongBeak = Student(firstName: "Dongbeak", lastName: "Seo")

sumin.firstName
dongBeak.firstName

sumin.printMyName()
dongBeak.printMyName()

let math = Grade(letter: "B", points: 8.5, credits: 3)
let history = Grade(letter: "A", points: 10, credits: 3)

dongBeak.grades.append(math)
//dongBeak.grades.append(contentsOf: [math, history]) // 여러 개 넣을 때 사용
dongBeak.grades.append(history)
dongBeak.grades.count

// 학생인데 운동선수
class StudentAthelete: Student {
    var minimumTrainingTime: Int = 2
    var trainedTime : Int = 0
    
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

// 사람 -> 학생 -> 운동선수 -> 축구선수

var athelete1 = StudentAthelete(firstName: "Yuna", lastName: "Kim")
var athelete2 = FootballPlayer(firstName: "Heung", lastName: "Son")

athelete1.firstName
athelete2.firstName

athelete1.grades.append(math)
athelete2.grades.append(math)

athelete1.minimumTrainingTime
athelete2.minimumTrainingTime

athelete2.footballTeam

athelete1.train()
athelete1.trainedTime

athelete2.train()
athelete2.trainedTime

athelete1 = athelete2 as StudentAthelete // 가능
//athelete2 = athelete1 // 불가능
athelete1.train()
athelete1.trainedTime
//athelete1.footballTeam : 어퍼캐스팅해서 불가능

if let son = athelete1 as? FootballPlayer { // 다운캐스팅
    print("---> Team: \(son.footballTeam)")
}
