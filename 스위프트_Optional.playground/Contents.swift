import UIKit

var carName: String? = "Tesla"
// ? : 값이 없을수도 있다.
carName = nil
carName = "탱크"

// 아주 간단한 과제
// 1. 여러분이 최애하는 영화배우의 이름을 담는 변수를 작성해주세요 (타입: String?)
// 2. let num = Int("10") -> 타입은 될까요??

var FavoritActor : String? = nil
let num = Int("10")

type(of: num)


// 고급 기능 4가지

// 1. Forced unwrapping > 억지로 박스를 까보기
// 2. Optional binding (if let) > 부드럽게 박스를 까보기 1
// 3. Optional binding (guard) > 부드럽게 박스를 까보기 2
// 4. Nil coalescing > 박스를 까봤더니, 값이 없으면 디폴트 값을 줘보자

// 1. 강제로 까는거는 nil일 경우 에러~~
//carName = nil
//print(carName!) // 값이 없는 경우 박스를 까면 에러!!

carName = nil

// 2.
if let unwrappedCarName = carName{
    print(unwrappedCarName)
} else {
    print("Non Car Name")
}

func printParsedInt(from: String){
    if let parsedInt = Int(from){
        print(parsedInt)
    } else {
      print("Int로 컨버팅 안된다.")
    }
}

printParsedInt(from: "100")
printParsedInt(from: "헬로우")
