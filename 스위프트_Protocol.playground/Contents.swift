import UIKit

// 도전 과제
// 1. 강의 이름, 강사 이름, 학생수를 가지는 Struct 만들기 (Lecture)
// 2. 강의 array와 강사이름읇 받아서, 해당 강사의 강의 이름을 출력하는 함수 만들기
// 3. 강의 3개 만들고 강사이름으로 강의 찾기

// CustomStringConvertible

struct Lecture : CustomStringConvertible{
    var description: String{
        return "Title: \(name), professor: \(professor)"
    }
    
    let name : String
    let professor : String
    let number : Int
}

let lecture1 = Lecture(name: "알고리즘", professor: "조행래", number: 43)
let lecture2 = Lecture(name: "컴퓨터구조", professor: "곽종욱", number: 80)
let lecture3 = Lecture(name: "자료구조", professor: "조행래", number: 50)

var lectures = [lecture1, lecture2, lecture3]

func printLectureName(lectures: [Lecture],professorName: String){
    for lecture in lectures{
        if lecture.professor == professorName{
            print("강의 이름 : \(lecture.name)")
        }
    }
}

printLectureName(lectures: lectures, professorName: "조행래")
