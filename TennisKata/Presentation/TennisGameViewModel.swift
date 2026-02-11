//
//  TennisGameViewModel.swift
//  TennisKata
//
//  Created by Tharun Menon on 11/02/26.
//

import Foundation

//Viewmodel for Tennis Game

class TennisGameViewModel:ObservableObject {
    
    //MARK:- Properties
    @Published private(set) var currentScore:String = ""
    @Published private(set) var isGameFinished:Bool = false
    @Published private(set) var player1:String = ""
    @Published private(set) var player2:String = ""
    
    //MARK: Private Properties
    private var tennisGame: TennisGameProtocol
    private let gameRules: () -> TennisGameProtocol
    
    //MARK:-Initialisation
    init(player1:String,player2:String,gameRules: (() -> TennisGameProtocol)? = nil) {
        self.player1 = player1
        self.player2 = player2
        
        //Create the rules for values
        if let rules = gameRules {
            self.gameRules = rules
        } else {
            self.gameRules = {TennisGame(player1: player1, player2: player2)}
        }
        
        //Create first game instance
        self.tennisGame = self.gameRules() as! TennisGame
        
        //Update score
        updateScore()
    }
    
    //MARK: Public Methods
    func player1Scores(){
        guard !isGameFinished else { return }
        tennisGame.scorePlayer1()
        updateScore()
    }
    
    func player2Scores(){
        guard !isGameFinished else { return }
        tennisGame.scorePlayer2()
        updateScore()
    }
    
    func resetGame(){
        tennisGame = gameRules()
        updateScore()
    }
    
    //MARK:-Private Method
    private func updateScore(){
        currentScore = tennisGame.getScore()
        isGameFinished = currentScore.contains("wins")
    }
}
