////: [Previous](@previous)
//
//import Foundation
//
//struct BankAccount {
//    private(set) var funds = 0
//
//    mutating func deposit(amount: Int) {
//        funds += amount
//    }
//
//    mutating func withdraw(amount: Int) -> Bool{
//        if(amount < funds) {
//            funds -= amount
//            return true
//        } else {
//            return false
//        }
//    }
//}
//
////
////var account = BankAccount()
////account.deposit(amount: 100)
////
////account.withdraw(amount: 1000)
////print(account.funds)
//
//struct School {
//    static var studentCount = 0
//
//    static func add(student: String) {
//     print("\(student) joined the school.")
//        studentCount += 1
//    }
//}
//
//School.add(student: "James")
//
//struct AppData {
//    static let version = "1.3 beta 2"
//    static let saveFilename = "settings.json"
//    static let homeUrl = "https://ww.hackingwithswift.com"
//}
//
//
//print(AppData.version)
//
//struct Employee {
//    let username: String
//    let password: String
//
//    static let example = Employee(username: "abcedfg", password: "12345678")
//
//}
//
//print(Employee.example.self)



struct Car  {
    let model: String
    let numberOfSeats: Int
    private(set) var currentGear: Int = 0
    
    mutating func changeGears(gear: Int) {
        if (gear < 0 || gear > 10) {
            print("Error: invalid gear" )
        } else {
            currentGear = gear
        }
    }
}

var car1 = Car(model: "Dacia 1310", numberOfSeats: 5)
car1.changeGears(gear: 11)
car1.changeGears(gear: 6)
print(car1.self)
