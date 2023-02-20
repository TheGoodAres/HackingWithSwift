//: [Previous](@previous)

import Foundation

struct BMIData {
    var height = 0.0
    var weight = 0.0
    var BMI = 0.0
    
    mutating func calBMI() {
        self.BMI = weight/ ( height * height)
        print("self....\(self)")
    }
}

//: [Next](@next)
