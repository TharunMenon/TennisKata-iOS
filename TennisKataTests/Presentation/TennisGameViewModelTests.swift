//
//  TennisGameViewModelTests.swift
//  TennisKata
//
//  Created by Tharun Menon on 11/02/26.
//

import XCTest
@testable import TennisKata

final class TennisGameViewModelTests: XCTestCase {
    
    var viewModel:TennisGameViewModel!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        viewModel = TennisGameViewModel(player1:"Arjun",player2:"Anil")
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        viewModel = nil
    }

    //MARK:-Test1 ViewModel setUp
    func testViewModelSetUp() throws {
        XCTAssertNotNil(viewModel)
        XCTAssertEqual(viewModel.currentScore,"Love All")
        XCTAssertEqual(viewModel.player1,"Arjun")
        XCTAssertEqual(viewModel.player2,"Anil")
        XCTAssertFalse(viewModel.isGameFinished)
    }
    
    //MARK:-Test2 Player 1 scoring updates
    func testPlayer1Scoring() throws {
        viewModel.player1Scores()
        XCTAssertEqual(viewModel.currentScore,"15 Love")
        XCTAssertFalse(viewModel.isGameFinished)
    }
    
    //MARK:Test3 Game Finished detection
    func testGameFinished() throws {
        viewModel.player1Scores()
        viewModel.player1Scores()
        viewModel.player1Scores()
        viewModel.player1Scores()
        XCTAssertEqual(viewModel.currentScore,"Arjun wins the game")
        XCTAssertTrue(viewModel.isGameFinished)
        
    }
    
    //MARK: Test4 Reset Game
    func testResetGame() throws {
        viewModel.player1Scores()
        viewModel.player2Scores()
        
        //Reset
        viewModel.resetGame()
        
        XCTAssertEqual(viewModel.currentScore,"Love All")
        XCTAssertFalse(viewModel.isGameFinished)
    }
}
