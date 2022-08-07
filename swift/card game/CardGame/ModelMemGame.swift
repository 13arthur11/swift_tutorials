//
//  ModelMemGame.swift
//  CardGame
//
//  Created by Артур on 01.09.2021.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    func chose(card: Card){
        
    }
    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent){
        cards = Array<Card>()
        for i in 0..<numberOfPairsOfCards{
            let content: CardContent = createCardContent(i)
            cards.append(Card( content: content))
            cards.append(Card( content: content))
        }
    }
    
    struct Card {
        var isUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
    }
}


