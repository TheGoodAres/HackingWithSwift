//: [Previous](@previous)

import Foundation

struct Card {
    let rank: Rank
    let suit: Suit
    
    enum Rank {
        case two, three, four, five, six, seven, eight, nine, ten, jack, queen, king, ace
    }
    enum Suit {
        case heart, diamond, club, spades
    }
}

struct PokerHand
{
    let cards: [Card]
}//: [Next](@next)
var myCard = Card(rank: .five, suit: .heart)

var myHand = PokerHand(cards: [Card(rank: .six, suit: .heart), Card(rank: .seven, suit: .club)])

print(myCard.suit)
print(myHand.cards[0].rank)
print(myHand.cards[0].suit)
