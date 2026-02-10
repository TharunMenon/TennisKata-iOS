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
    private var tennisGame: TennisGame
    
    //MARK:-Initialisation
    init(player1:String,player2:String){
        self.player1 = player1
        self.player2 = player2
        self.tennisGame = TennisGame(player1: player1, player2: player2)
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
        tennisGame = TennisGame(player1: player1, player2: player2)
        updateScore()
    }
    
    //MARK:-Private Method
    private func updateScore(){
        currentScore = tennisGame.getScore()
        isGameFinished = currentScore.contains("wins")
    }
}
