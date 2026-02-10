//
//  TennisScoreFormatter.swift
//  TennisKata
//
//  Created by Tharun Menon on 10/02/26.
//

import Foundation

//Protocol for tennis score formatting
protocol TennisScoreFormatter {
    func formatScore(_ score: TennisScore,player1: String, player2: String) -> String
}

//Implementation of tennis score formatting
class StandardTennisScoreFormatter: TennisScoreFormatter {
    func formatScore(_ score: TennisScore, player1: String, player2: String) -> String {
       let player1Score = score.player1Score
       let player2Score = score.player2Score
        
        //Game winner check
        if player1Score >= 4 && player1Score - player2Score >= 2 {
            return "\(player1) wins the game"
        }
        if player2Score >= 4 && player2Score - player1Score >= 2 {
            return "\(player2) wins the game"
        }
        
        //Advantage scenario
        if player1Score >= 3 && player2Score >= 3 && player1Score != player2Score {
            if player1Score > player2Score {
                return "Advantage \(player1)"
            } else {
                return "Advantage \(player2)"
            }
        }
        
        //Deuce Scenario
        if player1Score >= 3 && player2Score >= 3 && player1Score == player2Score {
           return "Deuce"
        }
        
        //Equal score scenario before deuce
        if player1Score == player2Score {
            if player1Score == 0 {
                return "Love All"
            } else {
                let scoreText = convertScore(player1Score)
                return "\(scoreText) All"
            }
        }
        
        //Different score scenario
        let player1ScoreText = convertScore(player1Score)
        let player2ScoreText = convertScore(player2Score)
        return "\(player1ScoreText) \(player2ScoreText)"
    }
    
    private func convertScore(_ score: Int) -> String {
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
            return "Love" //Safety fallback
        }
    }
}
