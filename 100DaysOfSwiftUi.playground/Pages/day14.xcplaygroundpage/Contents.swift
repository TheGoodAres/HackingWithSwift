//: [Previous](@previous)

import Foundation

//let opposites = [
//    "Mario": "Wario",
//    "Luigi": "Waluigi"
//]
//
//
//if let marioOpposite = opposites["Mario"] {
//        print("Mario's opposite is \(opposites["Mario"])")
//}
//
//var username: String? = nil
//
//if let unwrappedName = username {
// print("We got a user :\(unwrappedName)")
//} else {
//    print("The optional was empty.")
//}
//
//func square(number: Int) -> Int {
//    number * number
//}
//
//var number: Int? = nil
//
//if let unwrappedNumber = number {
//    print(square(number: unwrappedNumber))
//} else {
//    print("The number is nil")
//}
//
//
////unwrapping optionals with guard
//
//
//func printSquare(of number: Int?) {
//    guard let number = number else {
//        print("Missing input")
//        return
//    }
//    print("\(number) * \(number) = \(number * number)")
//}
//
//
//printSquare(of: 50)
//printSquare(of:)
//
//
//let captains = [
//    "Enterprise": "Picard",
//    "Voyager": "Janeway",
//    "Defiant": "Sisko"
//]
//
//let new = captains["Serenity"] ?? "N/A"
//
//let new_2 = captains["Serenity", default: "N/A"]
//
//let tvShows = ["Archer", "Babylon 5 ", "Ted Lasso"]
//let favorite = tvShows.randomElement() ?? "None"
//
//
////struct Book {
////    let title: String
////    let author: String?
////}
////
////let book = Book(title:"Snowwolf", author: nil)
////let author = book.author ?? "Anonymous"
////print(author)
////
////let input = "271"
////let numbers = Int(input) ?? 0
////print(numbers)
//
//
//let names = ["Arya", "Bran", "Robb", "Sansa"]
//
//let chosen = names.randomElement()?.uppercased() ?? "No one"
//print("Next in line: \(chosen)")
//
//struct Book {
//    let title: String
//    let author: String?
//}
//
//var book: Book? = Book(title: "The End", author: nil)
//let author = book?.author?.first?.uppercased() ?? "A"
//print(author)
//
//
//enum UserError: Error {
//    case badID, networkFailed
//}
//
//
//func getUser(id: Int) throws -> String {
//    throw UserError.networkFailed
//}
//
//if let user = try? getUser(id: 23) {
//    print("User \(user)")
//}

func challenge9(array: [Int]?) -> Int {
    return array?.randomElement() ?? Int.random(in: 0...100)
}

challenge9(array: nil)
