import UIKit

// Set : 중복 안됨, 순서 없음
var someArray : Array<Int> = [1, 2, 3, 1]
var someSet : Set<Int> = [1, 2, 3, 1]

someSet.isEmpty
someSet.count

someSet.contains(4)
someSet.contains(1)


someSet.insert(5)
someSet

someSet.remove(1)
someSet
