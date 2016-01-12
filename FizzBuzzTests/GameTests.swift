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
        game.play("1")
        XCTAssertTrue(game.score == 1)
    }
    
    func testIfFizzMoveIsRight() {
        game.score = 2
        let result = game.play("Fizz")
        XCTAssertEqual(result.right, true)
    }
    
    func testIfFizzMoveIsWrong() {
        game.score = 1
        let result = game.play("Fizz")
        XCTAssertEqual(result.right, false)
    }
    
    func testIfBuzzMoveIsCorrect() {
        game.score = 4
        let result = game.play("Buzz")
        XCTAssertEqual(result.right, true)
    }
    
    func testIfBuzzMoveIsIncorrect() {
        game.score = 3
        let result = game.play("Buzz")
        XCTAssertEqual(result.right, false)
    }
    
    func testIfFizzBuzzMoveIsCorrect() {
        game.score = 14
        let result = game.play("FizzBuzz")
        XCTAssertEqual(result.right, true)
    }
    
    func testIfFizzBuzzMoveIsIncorrect() {
        game.score = 13
        let result = game.play("FizzBuzz")
        XCTAssertEqual(result.right, false)
    }
    
    func testIfNumberMoveIsCorrect() {
        game.score = 1
        let result = game.play("2")
        XCTAssertEqual(result.right, true)
    }
    
    func testIfNumberMoveIsIncorrect() {
        game.score = 4
        let result = game.play("5")
        XCTAssertEqual(result.right, false)
    }
    
    func testIfMoveWrongScoreNotIncremented() {
        game.score = 1
        game.play("Fizz")
        XCTAssertEqual(game.score, 1)
    }
    
    func testPlayShouldReturnIfMoveRight() {
        let response = game.play("1")
        XCTAssertNotNil(response.right)
    }
    
    func testPlayShouldReturnNewScore() {
        let response = game.play("1")
        XCTAssertNotNil(response.score)
    }
}
