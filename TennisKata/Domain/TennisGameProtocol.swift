//
//  TennisGameProtocol.swift
//  TennisKata
//
//  Created by Tharun Menon on 11/02/26.
//

import Foundation

//Protocol for Tennis Game
protocol TennisGameProtocol {
    func scorePlayer1()
    func scorePlayer2()
    func getScore() -> String
}
    
    
//Extensions to make it confirm to protocol
extension TennisGame:TennisGameProtocol {
    
}
