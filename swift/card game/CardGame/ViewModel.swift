//
//  ViewModel.swift
//  CardGame
//
//  Created by Артур on 01.09.2021.
//

import Foundation


class EmojiGame {
    static let emoji = ["🤘", "👁", "🦾", "🤑", "💰", "🏅", "🍋", "💔", "🤡", "🥺"]
    
    private var model: MemoryGame<String> = MemoryGame<String>(numberOfPairsOfCards: 4){index in
        EmojiGame.emoji[index]
    }
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
