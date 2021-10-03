import UIKit

var evenNumbers: [Int] = [2, 4, 6, 8]
let evenNumbers2: Array<Int> = [2, 4, 6, 8]

evenNumbers.append(10) // 10 추가
evenNumbers += [12, 14, 16]
evenNumbers.append(contentsOf: [18, 20])

let isEmpty = evenNumbers.isEmpty

evenNumbers.count

print(evenNumbers.first) // optional 반환 : 값이 있을수도 없을수도 있음을 의미

let firstItem = evenNumbers.first
//
//evenNumbers = []
//let firstItem1 = evenNumbers.first

if let firstElement = evenNumbers.first {
    print("---> first item is \(firstElement)")
}

evenNumbers.min()
evenNumbers.max()

let first = evenNumbers[0]
let second = evenNumbers[1]
let tenItem = evenNumbers[9]

//let twentithItem = evenNumbers[19] : 범위를 벗어남


let firstThree =  evenNumbers[0...2]
evenNumbers

evenNumbers.contains(3) // 3이 들어있는지 확인
evenNumbers.contains(4)

evenNumbers.insert(1, at: 0) // 0번째에 1을 넣겠다.

evenNumbers.remove(at: 0)
evenNumbers

evenNumbers[0] = -2
evenNumbers[0...2] = [-2, 0, 2]
evenNumbers

//evenNumbers.removeAll()
//evenNumbers = []

evenNumbers.swapAt(0, 1) // 0번째와 1번째를 바꾸기

for num in evenNumbers{
    print(num)
}

for (index, num) in evenNumbers.enumerated(){
    print("idx : \(index), value : \(num)")
}

evenNumbers.dropFirst(3) // 앞에 3개 없앤 결과를 보기, array에 실제로 영향을 주지 않는다.
evenNumbers

let firstThreeRemoved = evenNumbers.dropFirst(3)
firstThreeRemoved

let lastDroped = evenNumbers.dropLast(1)
lastDroped

let firstThree1 = evenNumbers.prefix(3) // 앞에서 3개를 가져옴
firstThree1

let lastThree = evenNumbers.suffix(3)
lastThree

