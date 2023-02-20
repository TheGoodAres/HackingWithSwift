//: [Previous](@previous)

import Foundation

//struct Album {
//    let title: String
//    let artist: String
//    let year: Int
//
//    func printSummary(){
//        print("\(title) (\(year) by \(artist))")
//    }
//}
//
//
//let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
//let wings = Album(title: "Wings", artist: "BTS", year: 2016)
//
//
//struct Employee {
//    let  name: String
//    var vacationRemaining: Int
//
//     mutating func takeVacation(days: Int) {
//        if vacationRemaining >= days {
//            vacationRemaining -= days
//            print("I'm going on vacation")
//            print("Days remaining: \(vacationRemaining)")
//        } else {
//            print("Oops! There aren't enough days remaining.")
//        }
//    }
//}
//
//var archer = Employee(name: "Sterling Archer", vacationRemaining: 14)
//archer.takeVacation(days: 5)
//print(archer.vacationRemaining)
//
//
//struct Employee {
//    let name: String
//    var vacationAllocated = 14
//    var vacationTaken = 0
//
//    var vacationRemaining: Int {
//        get {
//            vacationAllocated - vacationTaken
//        }
//        set {
//            vacationAllocated = vacationTaken + newValue
//        }
//    }
//}
//
//var archer = Employee(name: "abc", vacationAllocated: 14)
//
//archer.vacationTaken += 4
//print(archer.vacationRemaining)
//
//archer.vacationRemaining = 5
//
//print(archer.vacationAllocated)
//
//
//struct Game {
//    var score = 0 {
//        didSet {
//            print("Score is now \(score)")
//        }
//    }
//}
//
//var game = Game()
//
//game.score += 10
//
//game.score -= 3
//game.score += 1
//
//
//struct App {
//    var contacts = [String]() {
//        //before the variable is changed
//        willSet {
//            print("Current: \(contacts)")
//            print("New value: \(newValue)")
//        }
//        //after the variable is changed
//        didSet {
//            print("There are now \(contacts.count)")
//            print("Old value: \(oldValue)")
//        }
//    }
//}
//
//
//var app = App()
//
//app.contacts.append("Adrian")
//app.contacts.append("Rob")


struct Player {
    let name: String
    let number: Int
    
    init(name: String, number: Int) {
        self.name = name
        self.number = number
    }
    
    init(name: String) {
        self.name = name
        self.number = Int.random(in: 1...99)
    }
}

let player1 = Player(name:"Rob", number:4)
let player2 = Player(name:"TJ")

