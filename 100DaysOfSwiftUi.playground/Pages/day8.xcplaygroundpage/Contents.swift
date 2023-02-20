import Foundation

//checkpoint4
enum errors : Error {
    case outOfBounds
    case noRoot
}
func squared(_  number: Int) throws -> Int{
    if (number < 1 || number > 10_000) {
        throw errors.outOfBounds
    }
    for x in 0..<number {
        if (x * x) == number {
            return x
        }
    }
    throw errors.noRoot
}
do{
    try print(squared(24))
} catch errors.outOfBounds {
    print("outOfBounds")
} catch errors.noRoot {
    print("noRoot")
}

