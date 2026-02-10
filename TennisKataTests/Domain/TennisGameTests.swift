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

    

    

}
