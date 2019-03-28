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
            
            //Eddy Questions
            list.append(Question(text: "on block df2 is...", answerOne: "safe", answerTwo: "punishable", answerThree: "plus on block", answerFour: "unblockable", correctAnswer: 1, fighter: Fighter.eddy))
            list.append(Question(text: "What is Eddy\'s b+3,3 on block?", answerOne: "0 to -3", answerTwo: "-5 to -8", answerThree: "-15 to -16", answerFour: "-13 to -14", correctAnswer: 4, fighter: Fighter.eddy))
            list.append(Question(text: "Eddy is a cheap character", answerOne: "Yes", answerTwo: "yes", answerThree: "Obviously", answerFour: "No I'm just a scub who can't play tekken", correctAnswer: 4, fighter: Fighter.eddy))
            
        case .jin:
            
            list.append(Question(text: "What is WS+2 on block", answerOne: "-15", answerTwo: "-9", answerThree: "-12 to -11", answerFour: "-11 to -10", correctAnswer: 3, fighter: Fighter.jin))
            list.append(Question(text: "What is b+2,1 on block", answerOne: "-9 to -8", answerTwo: "-11 to -10", answerThree: "-5", answerFour: "-2", correctAnswer: 1, fighter: Fighter.jin))
            list.append(Question(text: "d/b+4 on hit", answerOne: "+5", answerTwo: "+3 to +4", answerThree: "+1 to +2", answerFour: "KND", correctAnswer: 2, fighter: Fighter.jin))
            list.append(Question(text: "d+3+4 on block (Can Cans)", answerOne: "-19 to -17", answerTwo: "-13 to -12", answerThree: "-12 to -11", answerFour: "-9", correctAnswer: 1, fighter: Fighter.jin))
            
        default:
            print("placeholder") //This is a placeholder eventually every character case will be covered
            
        }
        
        
    }
    
}
