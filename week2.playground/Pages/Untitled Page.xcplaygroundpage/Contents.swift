import Foundation

class Enemy {
    var health: Int = 100
    var strength: Int = 10
    
    init (health: Int, strength: Int) {
        self.health = health
        self.strength = strength
        
    }
    
    func attack() {
        print("Attacked")
    }
    func move() {
        print("Moved forward")
    }
}

let enemy1 = Enemy(health: 150, strength: 25)
enemy1.health
enemy1.strength
enemy1.attack()
enemy1.move()
print(enemy1)
