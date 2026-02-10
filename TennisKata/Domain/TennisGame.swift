//
//  TennisGame.swift
//  TennisKata
//
//  Created by Tharun Menon on 10/02/26.
//

import Foundation

class TennisGame {
    
    private var player1Score:Int = 0
    private var player2Score:Int = 0
    private let player1Name:String
    private let player2Name:String
   
    
    init(player1:String, player2:String){
        //Minimal implementation to accept params
        self.player1Name = player1
        self.player2Name = player2
    }
    
    func scorePlayer1() {
        player1Score += 1
    }
    
    func scorePlayer2() {
        player2Score += 1
    }
    
    
    func getScore() -> String {
        
        //Check game winners first
        if player1Score >= 4 && player1Score - player2Score >= 2 {
            return "\(player1Name) wins the game"
        }
        if player2Score >= 4 && player2Score - player1Score >= 2 {
            return "\(player2Name) wins the game"
        }
        
        //Handle Advantage
        if player1Score >= 3 && player2Score >= 3 && player1Score != player2Score {
            if player1Score > player2Score {
                return "Advantage \(player1Name)"
            } else {
                return "Advantage \(player2Name)"
            }
        }
        
        //Handle deuce
        if player1Score == 3 && player2Score == 3 && player1Score == player2Score {
            return "Deuce"
        }
        
        //Handle equal scores
        if player1Score == player2Score {
            if player1Score == 0 {
                return "Love All"
            } else {
                let scoreText = convertScore(player1Score)
                return "\(scoreText) All"
            }
        }
        
        //Handle different scores
        let player1ScoreText = convertScore(player1Score)
        let player2ScoreText = convertScore(player2Score)
        return "\(player1ScoreText) \(player2ScoreText)"
    }
    
    private func convertScore(_ score:Int) -> String {
        switch score {
        case 0:
            return "Love"
        case 1:
            return "15"
        case 2:
            return "30"
        case 3:
            return "40"
        default :
            return "Love" //safety fallback
        }
    }
}
