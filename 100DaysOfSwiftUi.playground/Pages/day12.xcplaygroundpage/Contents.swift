//: [Previous](@previous)

import Foundation


class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var newgame = Game()

newgame.score += 10


class Employee {
    let hours : Int
    
    init(hours: Int) {
        self.hours = hours
    }
    
    func summary() {
        print("I work \(hours) a day.")
    }
}

class Developer: Employee {
    func work() {
        print("I'm writing code for \(hours) hours.")
    }
    //will throw an error if the parent class does not have a summary function
    //or if override is not decalared
    override func summary() {
        print("I'm a developer who will sometimes work \(hours) hours a day, but other times spend hours arguing about whether code should be indented using tabs or spaces.")
    }
}

//final class won't be able to be the parent of another class but Manager itself can be the child of another class
final class Manager: Employee {
    func work() {
        print("I'm going to meetings for \(hours) hours.")
    }
}
 let robert = Developer(hours: 8)
let joseph = Manager(hours: 10)

robert.work()
joseph.work()

let novall = Developer(hours: 8)
novall.summary()


class Vehicle {
    let isElectric: Bool
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible:  Bool
    init(isConvertible:Bool, isElectric:Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}

let teslaX = Car(isConvertible: false, isElectric: true)
class User {
    var name = "Paul"
}

let user = User()
user.name = "Taylor"

print(user.name)

class Animal {
    private(set) var legs: Int = 4
    
    init (legs: Int) {
        self.legs = legs
    }
}

class Dog : Animal {
    func speak() {
        print("Ham!Ham!")
    }
}
class Cat: Animal {
    var isTame: Bool
    init(legs: Int, isTame: Bool) {
        self.isTame = isTame
        super.init(legs: legs)
        
    }
    func speak() {
        print("Miau!Miau!")
    }
}
class Corgi : Dog {
    override func speak() {
        print("Hamc!Hamc!")
    }
}
class Poodle : Dog {
    override func speak() {
        print("HamP!HamP!")
    }
    
}
class Persian : Cat {
    override func speak() {
        print("MiauP!MiauP!")
    }
}
class Lion : Cat {
    override func speak() {
        print("Roar!Roar!")
    }
}


let dog = Dog(legs: 4)
let cat = Cat(legs: 4, isTame: true)
let corgi = Corgi(legs: 4)
let poodle = Poodle(legs: 4)
let persian = Persian(legs: 4, isTame: true)
let lion = Lion(legs: 4, isTame: false)

dog.speak()
print(dog.self)
cat.speak()
print(cat.self)
corgi.speak()
print(corgi.self)
poodle.speak()
print(poodle.self)
persian.speak()
print(persian.self)
lion.speak()
print(lion.self)
