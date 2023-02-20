import Foundation
//equivalent of interface in
//protocol Vehicle {
//    var name: String {get}
//    var currentPassangers: Int {get set}
//    func estimateTime(for distance: Int) -> Int
//    func travel(distance: Int)
//}
//
//struct Car: Vehicle {
//    let name: String = "Car"
//    var currentPassengers: Int = 1
//    func estimateTime(for distance: Int) -> Int {
//        distance / 50
//    }
//    func travel(distance: Int) {
//        print("I'm driving \(distance) km!")
//    }
//    func openSunroof() {
//        print("It's a sunny day!")
//    }
//}
//
//struct Bycicle: Vehicle {
//    let name: String = "Bycicle"
//    var currentPassengers : Int = 1
//    func estimateTime(for distance: Int) -> Int {
//        distance / 10
//    }
//    func travel(distance: Int) {
//        print("I'm cycling \(distance) km!")
//    }
//}
//func commute(distance: Int, using vehicle: Vehicle) {
//    if vehicle.estimateTime(for: distance) > 300 {
//        print("That takes too long!")
//    } else {
//        vehicle.travel(distance: distance)
//    }
//}
//let car = Car()
//let bycicle = Bycicle()
//commute(distance: 100, using: car)
//commute(distance: 100, using: bycicle)
//var quote = "   The truth is rarely pure and never simple   "
//
//extension String {
//    //ending in ed -> returns someting
//    func trimmed() -> String {
//        self.trimmingCharacters(in: .whitespacesAndNewlines)
//    }
//    //ending in anything else changes in place
//    mutating func trim() {
//        self = self.trimmed()
//    }
//
//    var lines: [String] {
//        self.components(separatedBy: .newlines)
//    }
//}
//quote.trim()
//
//let lyrics = """
//But I keep cruising
//Can't stop, won't stop moving
//It's like I got this music in my mind
//Saying it's gonna be alright
//"""
//
//print(lyrics.lines.count)
//
//
//struct Book {
//    let title: String
//    let pageCount: Int
//    let readingHours: Int
//}
//extension Book {
//    //by adding this extension, it enabled the automatic init to be available while
//    //also make the custom init available too
//    init(title: String, pageCount: Int) {
//        self.title = title
//        self.pageCount = pageCount
//        self.readingHours = pageCount / 50
//    }
//}
//
//let lotr = Book(title: "Lord of the Rings", pageCount: 1178)
//
//extension Collection {
//    var isNotEmpty: Bool {
//        isEmpty == false
//    }
//}
//
//let guests = ["Mario", "Luigi", "Peach"]
//
//if guests.isNotEmpty {
//    print("Guest count: \(guests.count)")
//}
//
//
//protocol Person {
//    var name: String {get}
//    func sayHello()
//}
//extension Person {
//    func sayHello() {
//        print("Hi, I'm \(name)")
//    }
//}
//
//struct Employee: Person {
//    let name: String
//}
//let taylor = Employee(name: "Taylor Swift")
//taylor.sayHello()
protocol Building {
    var numberOfRooms: Int {get
        set}
    var cost: Int {get set}
    var estateAgent: String {get set}
    func salesSummary()
}
extension Building {
    func salesSummary() {
        print("Number of rooms: \(numberOfRooms) cost: \(cost) estate agent: \(estateAgent)")
    }
}
struct House: Building {
    var numberOfRooms: Int
    var cost: Int
    var estateAgent: String
}
struct Office:Building {
    var numberOfRooms: Int
    var cost: Int
    var estateAgent: String
}

var house = House(numberOfRooms: 20, cost: 200_000, estateAgent: "JamesMay")
house.salesSummary() 
