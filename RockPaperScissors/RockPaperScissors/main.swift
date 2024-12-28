//
//  main.swift
//  RockPaperScissors
//
//  Created by Zhanel Amralina on 7/14/24.
//

import Foundation

enum Choice: Int {
    case stone = 0
    case scissors
    case paper
}
print("Enter a name for the first player:")
let firstPlayerName = readLine()

print("Enter a name for the second player:")
let secondPlayerName = readLine()

let firstPlayer = getPlayer(name: firstPlayerName)
let secondPlayer = getPlayer(name: secondPlayerName)

print("First player name is \(firstPlayer.name)")
print("Second player name is \(secondPlayer.name)")

var playGame = "yes"

while(playGame == "yes") {
    print("\(firstPlayer.name) make your choice:")
    
    if let number = Int(readLine() ?? "0"), let choice = Choice(rawValue: number) {
        firstPlayer.makeChoice(choice: choice)
    }
    
    print("\(secondPlayer.name) make your choice:")
    
    if let number = Int(readLine() ?? "0"), let choice = Choice(rawValue: number) {
        secondPlayer.makeChoice(choice: choice)
    }
    
    gameSummarization(firstPlayer: firstPlayer, secondPlayer: secondPlayer)
    
    print("\(firstPlayer.name) - \(firstPlayer.wins)")
    print("\(secondPlayer.name) - \(secondPlayer.wins)")
    
    print("Do you want to continue the game?")
    playGame = readLine() ?? "yes"
}

    print("Thanks for the game!")

private func getPlayer(name: String?) -> Player {
    if let name {
        return Player(name: name)
    }
    
    return Player(name: "NoName")
}

private func gameSummarization(firstPlayer: Player, secondPlayer: Player) {
    if firstPlayer.playerChoice == secondPlayer.playerChoice {
        return
    }
    
    if firstPlayer.playerChoice == .stone && secondPlayer.playerChoice == .scissors || firstPlayer.playerChoice == .paper && secondPlayer.playerChoice == .stone || firstPlayer.playerChoice == .scissors && secondPlayer.playerChoice == .paper {
        firstPlayer.wins += 1
        
        return
    }
    
    secondPlayer.wins += 1
        
}
