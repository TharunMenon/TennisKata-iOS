//
//  TennisKataTests.swift
//  TennisKataTests
//
//  Created by Tharun Menon on 10/02/26.
//

import XCTest
@testable import TennisKata

final class TennisGameTests: XCTestCase {
    
    //MARK:-Test 1: Simplest failing test
    func testCanCreateTennisGame() throws{
        //Given:Two player names
        //When:I create a tennis game
        let game = TennisGame(player1:"Arjun",player2:"Anil")
        
        //Then: Game should created successfully
        XCTAssertNotNil(game)
        
    }

    //MARK:-Test2:To test inital score
    func testInitialScore() throws{
        //Given: A new tennis game
        let game = TennisGame(player1:"Arjun",player2:"Anil")
        
        //When: Check score
        let score = game.getScore()
        
        //Then: Score should be "Love All"
        XCTAssertEqual(score, "Love All")
    }

    //MARK:-Test3:Player1 scores first point
    func testPlayer1ScoresFirstPoint() throws{
        //Given: A new tennis game
        let game = TennisGame(player1:"Arjun",player2:"Anil")
        
        //When: Player1 scores a point
        game.scorePlayer1()
        
        //Then: Score should be "15 Love"
        XCTAssertEqual(game.getScore(), "15 Love")
        
    }
    
    //MARK:-Test4:Player2 scores first point
    func testPlayer2ScoresFirstPoint() throws{
        //Given: A new tennis game
        let game = TennisGame(player1:"Arjun",player2:"Anil")
        
        //When: Player2 scores a point
        game.scorePlayer2()
        
        //Then: Score should be "Love 15"
        XCTAssertEqual(game.getScore(), "Love 15")
        
    }

}
