import Foundation

//let sayHello = { (name: String) -> String in
//    "Hi \(name)"
//}
//
//print(sayHello("Rob"))


//func getUserData(for id: Int) -> String {
//    if id == 1989 {
//        return "Taylor Swift"
//    } else {
//        return "Anonymous"
//    }
//}
//
//let data: (Int) -> String = getUserData
//let user = data(1989)
//print(user)


//let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
//let sortedTeam = team.sorted()
//print(sortedTeam)
//
//func captainFirstSorted(name1: String, name2: String) -> Bool {
//    if name1 == "Suzanne" {
//        return true
//    } else if name2 == "Suzanne" {
//        return false
//    }
//    return name1 < name2
//}
//
////let captainFirstTeam = team.sorted(by: captainFirstSorted)
////print(captainFirstTeam)
//
//let captainFirstTeam = team.sorted(by: {(name1: String, name2: String) -> Bool in
//    if name1  == "Suzanne" {
//        return true
//    } else if name2 == "Suzanne" {
//        return false
//    }
//    return name1 < name2
//})
//
//print(captainFirstTeam)


//trailing closures and shorthand syntax


//checkpoint 5
let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

var oddNumbers = luckyNumbers.filter {
   $0 % 2 != 0
}
let ascendingOrder = oddNumbers.sort {
    return $0 < $1
}
let formattedNumbers = oddNumbers.map{
    "\($0) is a lucky number"
}
for numbers in formattedNumbers {
    print(numbers)
}
