//
//  TennisGame.swift
//  TennisKata
//
//  Created by Tharun Menon on 10/02/26.
//

import Foundation

class TennisGame {
    
    //MARK:Properties
    private var currentScore:TennisScore
    private let player1:String
    private let player2:String
    private let scoreFormatter:TennisScoreFormatter
   
    //MARK:Initialisation
    init(player1:String, player2:String,scoreFormatter:TennisScoreFormatter = StandardTennisScoreFormatter()){
        //Minimal implementation to accept params
        self.player1 = player1
        self.player2 = player2
        self.scoreFormatter = scoreFormatter
        self.currentScore = TennisScore()
    }
    
    //MARK:Public Methods
    func scorePlayer1() {
        currentScore = currentScore.incrementPlayer1()
    }
    
    func scorePlayer2() {
        currentScore = currentScore.incrementPlayer2()
    }
    
    func getScore() -> String {
        return scoreFormatter.formatScore(currentScore, player1: player1, player2: player2)
    }
}
