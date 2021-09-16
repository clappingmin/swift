import UIKit
import Foundation

// --- While

//while 조건 {
//
//}

var i = 0
while i < 10 {
    print(i)
    
    if i == 5 {
        break
    }
    i += 1
}


i = 0
repeat {
    print(i)
    i += 1
    
} while i < 10

//while
//조건 > 코드 수행 > 조건 > 코드 수행

//repeat while
//코드 수행 > 조건 > 코드수행 > 조건

// --- For Loop

let closedRange = 0...10 //0~10까지 담고 있음
let halfClosedRanged = 0..<10 // 0~9까지 담고 있음

var sum = 0
for i in closedRange{
    print("--->\(i)")
    sum += i
}

print("---> total sum: \(sum)")

// sin 그래프 그리기
var sinValue: CGFloat = 0
for i in closedRange {
    sinValue = sin(CGFloat.pi/4 * CGFloat(i))
}
