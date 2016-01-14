//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Alexander Person on 1/11/16.
//  Copyright © 2016 Alexander Person. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var game: Game?
    
    var gameScore: Int? {
        didSet {
            guard let labelScore = gameScore else {
                print("Score is nil!")
                return
            }
            numberButton.setTitle("\(labelScore)", forState: .Normal)
        }
    }
    
    
    @IBOutlet weak var numberButton: UIButton!
    
    @IBOutlet weak var fizzButton: UIButton!
    
    @IBOutlet weak var buzzButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game()
        
        guard let checkedGame = game else {
            print("Game is nil")
            return
        }
        
        gameScore = checkedGame.score
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func play(move: Move) {
//        gameScore = 1
        guard let unwrappedGame = game else {
            print("Game is nil!")
            return
        }
        let response = unwrappedGame.play(move)
        gameScore = response.score
    }

    @IBAction func buttonTapped(sender: UIButton) {
//        guard let unwrappedScore = gameScore else {
//            print("Game score is nil")
//            return
//        }
//        
//        let nextScore = unwrappedScore + 1
        if sender == numberButton {
            play(Move.Number)
        } else if sender == fizzButton {
            play(Move.Fizz)
        } else if sender == buzzButton {
            play(Move.Buzz)
        } else {
            play(Move.FizzBuzz)
        }
    }
}

