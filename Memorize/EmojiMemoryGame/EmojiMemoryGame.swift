//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Felix Liman on 20/10/20.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    private static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["👻","🎃","💀","😲","🥜","🥖","🍉","🍤",]
        return MemoryGame<String>(numberOfPairs: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    // MARK: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card)
    }
        
    func resetGame() {
        model = EmojiMemoryGame.createMemoryGame()
    }
}
