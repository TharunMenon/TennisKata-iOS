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
   
    
    init(player1:String, player2:String){
        //Minimal implementation to accept params
    }
    
    func scorePlayer1() {
        player1Score += 1
    }
    
    func scorePlayer2() {
        player2Score += 1
    }
    
    
    func getScore() -> String {
        
        //Handle equal scores
        if player1Score == player2Score {
            if player1Score == 0 {
                return "Love All"
            } else {
                let scoreText = convertScore(player1Score)
                return "\(scoreText) All"
            }
        }
        
        //Handle equal scores
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
