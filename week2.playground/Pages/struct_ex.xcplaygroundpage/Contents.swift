import Foundation

struct Town {
    let name: String
    var people: [String] //array
    var item: [String: Int] //dictionary
    
    func newRoad() {
        print("New road to be built")
    }
}

