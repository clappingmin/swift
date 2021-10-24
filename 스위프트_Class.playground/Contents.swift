import UIKit

struct PersonStruct {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) { // 생성자
        self.firstName = firstName
        self.lastName = lastName
    }
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
    mutating func uppercaseName() {
        firstName = firstName.uppercased()
        lastName = lastName.uppercased()
    }
}

class PersonClass {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) { // 생성자
        self.firstName = firstName
        self.lastName = lastName
    }
    
    var fullName: String{
        return "\(firstName) \(lastName)"
    }
    
    func uppercaseName() {
       firstName = firstName.uppercased()
       lastName = lastName.uppercased()
   }
}

var personStruct1 = PersonStruct(firstName: "Sumin", lastName: "Park")
var personStruct2 = personStruct1

var personClass1 = PersonClass(firstName: "Sumin", lastName: "Park")
var personClass2 = personClass1

personStruct2.firstName = "S"
personStruct1.fullName
personStruct2.fullName

personClass2.firstName = "S"
personClass1.fullName
personClass2.fullName

personClass2 = PersonClass(firstName: "Bob", lastName: "Lee")
personClass1.fullName
personClass2.fullName

personClass1 = personClass2
personClass1.fullName
personClass2.fullName
