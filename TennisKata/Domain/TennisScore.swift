//
//  TennisScore.swift
//  TennisKata
//
//  Created by Tharun Menon on 10/02/26.
//

import Foundation

//Value object for tennis score representation only
struct TennisScore: Equatable {
    let player1Score: Int
    let player2Score: Int
    
    init(player1Score: Int = 0, player2Score: Int = 0) {
        self.player1Score = player1Score
        self.player2Score = player2Score
    }
    
    func incrementPlayer1() -> TennisScore {
        return TennisScore(player1Score: player1Score + 1, player2Score: player2Score)
    }
    
    func incrementPlayer2() -> TennisScore {
        return TennisScore(player1Score: player1Score, player2Score: player2Score + 1)
    }
}
