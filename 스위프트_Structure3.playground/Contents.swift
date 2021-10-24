import UIKit

struct Person {
    var firstName: String { // stored 프로퍼티는 값이 바뀐 시점을 알 수 있다. -> didSet을 이용 stored만 사용가능
        
        willSet { // 값이 바뀌기 직전에도 알 수 있다.
            print("willSet: \(firstName) -> \(newValue)")
        }
        
        didSet {
            print("didSet: \(oldValue) -> \(firstName)")
        }
    }
    var lastName: String    // 실무에서는 보통 let으로 사용
    
    lazy var isPopular: Bool = { // lazy 프로퍼티
        if fullName == "Jay Park" {
            return true
        } else {
            return false
        }
    }()
    
//    var fullName: String { // 프로퍼티는 무조건 var , computed property : stored property를 사용해서 계산하거나, 재가공할 때 사용
//        get {
//            return "\(firstName) \(lastName)"
//        }
//        set {
////            ex) newValue: "Jay Park"
//            if let firstName = newValue.components(separatedBy: " ").first{
//                self.firstName = firstName
//            }
//            if let lastName = newValue.components(separatedBy: " ").last{
//                self.lastName = lastName
//            }
//
//        }
//    }
//    computed property 간략한 버전
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
// 헷갈리는 부분 : 같은 동장을 하지 않는가??
// 결과는 똑같다.
//    func fullName() -> String{
//        return "\(firstName) \(lastName)"
//    }
    
    
//    타입 프로퍼티:  생성된 객체에 상관없이 struct타입 자체가 가지는 프로퍼티
    static let isAlion: Bool = false
    
}

// 생성한 객체의 프로퍼티 : 인스턴스 프로퍼티
var person = Person(firstName: "Sumin", lastName: "Park")

person.firstName
person.lastName


person.firstName = "DongBeak"
person.lastName = "Seo"
person.lastName
person.firstName

//person.fullName
//person.fullName = "Jay Park" // get만 있을경우 read only라서 수정 불가능 set이 있으면 가능
//person.firstName
//person.lastName

Person.isAlion // 타입 프로퍼티

person.isPopular // 접근하기 전에는 실행이 안되다가 접근하면 실행됨
