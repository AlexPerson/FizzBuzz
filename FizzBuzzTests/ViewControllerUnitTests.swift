//
//  ViewControllerUnitTests.swift
//  FizzBuzz
//
//  Created by Alexander Person on 1/12/16.
//  Copyright © 2016 Alexander Person. All rights reserved.
//

import XCTest

@testable import FizzBuzz

class ViewControllerUnitTests: XCTestCase {
    
    var viewController : ViewController!
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        viewController = storyboard.instantiateViewControllerWithIdentifier("ViewController") as! ViewController
        UIApplication.sharedApplication().keyWindow!.rootViewController = viewController
        
        let _ = viewController.view
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testMove1IncrementsScore() {
        viewController.play(Move.Number)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 1)
    }
    
    func testMove2IncrementsScore() {
        viewController.play(Move.Number)
        viewController.play(Move.Number)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 2)
    }
    
    func testIfFizzIncrementsScore() {
        viewController.game?.score = 2
        viewController.play(Move.Fizz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 3)
    }
    
    func testIfBuzzIncrementsScore() {
        viewController.game?.score = 4
        viewController.play(Move.Buzz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 5)
    }
    
    func testIfFizzBuzzIncrementsScore() {
        viewController.game?.score = 14
        viewController.play(Move.FizzBuzz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 15)
    }
    
    func testScoreNotIncrementedAfterWrongMove() {
        viewController.play(Move.Fizz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 0)
    }
}
