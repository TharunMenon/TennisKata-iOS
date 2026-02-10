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
    
    //MARK:-Test5:Player1 scores twice
    func testPlayer1ScoresTwice() throws{
        //Given: A new tennis game
        let game = TennisGame(player1:"Arjun",player2:"Anil")
        
        //When: Player2 scores a point
        game.scorePlayer1()
        game.scorePlayer1()
        
        //Then: Score should be "30 Love"
        XCTAssertEqual(game.getScore(), "30 Love")
        
    }
    
    //MARK:-Test6:Both player score once
    func testBothPlayer1ScoreOnce() throws{
        //Given: A new tennis game
        let game = TennisGame(player1:"Arjun",player2:"Anil")
        
        //When: Both scores a point
        game.scorePlayer1()
        game.scorePlayer2()
        
        //Then: Score should be "15 All"
        XCTAssertEqual(game.getScore(), "15 All")
        
    }
    
    //MARK:-Test7:Player1 wins game
    func testPlayer1winsGame() throws{
        //Given: A new tennis game
        let game = TennisGame(player1:"Arjun",player2:"Anil")
        
        //When: Player1 scores 4 point
        game.scorePlayer1()
        game.scorePlayer1()
        game.scorePlayer1()
        game.scorePlayer1()
        
        //Then: Score should be "30 Love"
        XCTAssertEqual(game.getScore(), "Arjun wins the game")
        
    }
    
    //MARK:-Test8:Deuce scenario
    func testDeuceScenario() throws{
        //Given: A new tennis game
        let game = TennisGame(player1:"Arjun",player2:"Anil")
        
        //When: Player1 scores 4 point
        game.scorePlayer1()
        game.scorePlayer1()
        game.scorePlayer1()
        game.scorePlayer2()
        game.scorePlayer2()
        game.scorePlayer2()
        
        //Then: Score should be "Deuce"
        XCTAssertEqual(game.getScore(), "Deuce")
        
    }
    
    //MARK:-Test9:Advantage to player
    func testAdvantageToPlayer() throws{
        //Given: A new tennis game
        let game = TennisGame(player1:"Arjun",player2:"Anil")
        
        //When: Player1 scores 4 point
        game.scorePlayer1()
        game.scorePlayer1()
        game.scorePlayer1()
        game.scorePlayer2()
        game.scorePlayer2()
        game.scorePlayer2()
        game.scorePlayer1()
        
        //Then: Player1 Advantage
        XCTAssertEqual(game.getScore(), "Advantage Arjun")
        
    }
    
    //MARK:-Test10:Win from advantage
    func testWinFromAdvantage() throws{
        //Given: A new tennis game
        let game = TennisGame(player1:"Arjun",player2:"Anil")
        
        //When: Player1 scores 4 point
        game.scorePlayer1()
        game.scorePlayer1()
        game.scorePlayer1()
        game.scorePlayer2()
        game.scorePlayer2()
        game.scorePlayer2()
        game.scorePlayer1()
        game.scorePlayer1()
        
        //Then: Player1 Advantage
        XCTAssertEqual(game.getScore(), "Arjun wins the game")
        
    }
    
    //MARK:-Test11:Back to deuce from advantage
    func testBackToDeuceFromAdvantage() throws{
        //Given: A new tennis game
        let game = TennisGame(player1:"Arjun",player2:"Anil")
        
        //When: Player1 scores 4 point
        game.scorePlayer1()
        game.scorePlayer1()
        game.scorePlayer1()
        game.scorePlayer2()
        game.scorePlayer2()
        game.scorePlayer2()
        game.scorePlayer1()
        game.scorePlayer2()
        
        //Then: Player1 Advantage
        XCTAssertEqual(game.getScore(), "Deuce")
        
    }


}
