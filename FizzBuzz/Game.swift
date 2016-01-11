//
//  Game.swift
//  FizzBuzz
//
//  Created by Alexander Person on 1/11/16.
//  Copyright © 2016 Alexander Person. All rights reserved.
//

import UIKit

class Game: NSObject {
    
    var score: Int
    let brain: Brain
    
    override init() {
        score = 0
        brain = Brain()
        super.init()
    }
    
    func play(move: String) -> Bool {
        score++
        
        let result = brain.check(score)
        
        if move == result {
            return true
        } else {
            return false
        }
    }

}
