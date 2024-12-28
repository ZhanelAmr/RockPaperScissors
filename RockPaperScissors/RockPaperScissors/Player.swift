//
//  Player.swift
//  RockPaperScissors
//
//  Created by Zhanel Amralina on 7/14/24.
//

import Foundation

protocol PlayerProtocol {
    var name: String {get}
    var playerChoice: Choice? {get set}
    var wins: Int{get set}
    
    func makeChoice(choice: Choice)
}

final class Player: PlayerProtocol {
    let name: String
    var playerChoice: Choice?
    var wins: Int = 0
    
    init(name: String) {
        self.name = name
    }
    
    func makeChoice(choice: Choice) {
        playerChoice = choice
    }
}
