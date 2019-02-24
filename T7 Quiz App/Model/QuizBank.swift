//
//  QuizBank.swift
//  T7 Quiz App
//
//  Created by Ruben Amaez on 2/6/19.
//  Copyright © 2019 ramaez. All rights reserved.
//

import Foundation

class QuizBank {
    
    var list = [Question]()
    
    init(picked character: Fighter) {
        
        switch character {
        case .eddy:
            print("picked eddy")
            
            //Eddy Questions
            list.append(Question(text: "on block df2 is...", answerOne: "safe", answerTwo: "punishable", answerThree: "plus on block", answerFour: "unblockable", correctAnswer: 1, fighter: Fighter.eddy))
            list.append(Question(text: "Eddy\'s b+3,3 is _ on block?", answerOne: "0 to -3", answerTwo: "-5 to -8", answerThree: "-15 to -16", answerFour: "-13 to -14", correctAnswer: 4, fighter: Fighter.eddy))
            
        default:
            print("placeholder") //This is a placeholder eventually every character case will be covered
            
        }
        
        
    }
    
}
