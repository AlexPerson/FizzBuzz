//
//  GameTests.swift
//  FizzBuzz
//
//  Created by Alexander Person on 1/11/16.
//  Copyright © 2016 Alexander Person. All rights reserved.
//

import XCTest

@testable import FizzBuzz

class GameTests: XCTestCase {
    
    let game = Game()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testGameStartsAtZero() {
        XCTAssertTrue(game.score == 0)
    }
    
    func testOnPlayScoreIncremented() {
        game.play(Move.Number)
        XCTAssertTrue(game.score == 1)
    }
    
    func testIfFizzMoveIsRight() {
        game.score = 2
        let result = game.play(Move.Fizz)
        XCTAssertEqual(result.right, true)
    }
    
    func testIfFizzMoveIsWrong() {
        game.score = 1
        let result = game.play(Move.Fizz)
        XCTAssertEqual(result.right, false)
    }
    
    func testIfBuzzMoveIsCorrect() {
        game.score = 4
        let result = game.play(Move.Buzz)
        XCTAssertEqual(result.right, true)
    }
    
    func testIfBuzzMoveIsIncorrect() {
        game.score = 3
        let result = game.play(Move.Buzz)
        XCTAssertEqual(result.right, false)
    }
    
    func testIfFizzBuzzMoveIsCorrect() {
        game.score = 14
        let result = game.play(Move.FizzBuzz)
        XCTAssertEqual(result.right, true)
    }
    
    func testIfFizzBuzzMoveIsIncorrect() {
        game.score = 13
        let result = game.play(Move.FizzBuzz)
        XCTAssertEqual(result.right, false)
    }
    
    func testIfNumberMoveIsCorrect() {
        game.score = 1
        let result = game.play(Move.Number)
        XCTAssertEqual(result.right, true)
    }
    
    func testIfNumberMoveIsIncorrect() {
        game.score = 4
        let result = game.play(Move.Number)
        XCTAssertEqual(result.right, false)
    }
    
    func testIfMoveWrongScoreNotIncremented() {
        game.score = 1
        game.play(Move.Fizz)
        XCTAssertEqual(game.score, 1)
    }
    
    func testPlayShouldReturnIfMoveRight() {
        let response = game.play(Move.Number)
        XCTAssertNotNil(response.right)
    }
    
    func testPlayShouldReturnNewScore() {
        let response = game.play(Move.Number)
        XCTAssertNotNil(response.score)
    }
}
