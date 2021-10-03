import UIKit

// 딕셔너리 : key, value 사용, index는 사용하지 않는다.

var scoreDic : [String: Int] = ["Jason": 80, "Jay" : 85, "Sumin" : 100]
var scoreDic1 : Dictionary<String, Int> = ["Jason": 80, "Jay" : 85, "Sumin" : 100]

scoreDic["Jason"]

if let score = scoreDic["Jay"] {
    print(score)
} else {
  print("non score")
}

scoreDic["Jerry"]

// scoreDic = [:] // 비울 때
scoreDic.isEmpty
scoreDic.count

scoreDic["Jason"] = 99
scoreDic

// 사용자 추가
scoreDic["jake"] = 50
scoreDic

scoreDic["jake"] = nil
scoreDic

for (name, score) in scoreDic{
    print("name : \(name), score : \(score)")
}

for key in scoreDic.keys {
    print(key) // 순서는 랜덤
}

// 1. 이름, 직업, 도시에 대해서 본인의 딕셔너리 만들기
// 2. 여기서 도시를 부산으로 업데이트 하기
// 3. 딕셔니리를 받아서 이름과 도시 프린트하는 함수 만들기

var myDic: [String: String] = ["name" : "Sumin", "job": "ios Developer", "city" : "YeongCheon"]
myDic["city"] = "Seoul"

func printNameandCity(dic: [String: String]){
    
    if let name = dic["name"], let city = dic["city"]{
        print(name, city)
    } else {
        print("can not find")
    }
}

printNameandCity(dic: myDic)
