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
            
        case.asuka:
            list.append(Question(text: "what is asuka's f2 on block?", answerOne: "-17", answerTwo: "-15", answerThree: "-9", answerFour: "-2", correctAnswer: 1, fighter: Fighter.asuka))
        case.heihachi:
            list.append(Question(text: "Who isn't related by blood to heihachi?", answerOne: "Lars", answerTwo: "Jin", answerThree: "Asuka", answerFour: "Kazuya", correctAnswer: 3, fighter: Fighter.heihachi))
        case .eddy:
            
            //Eddy Questions
            list.append(Question(text: "on block df2 is...", answerOne: "safe", answerTwo: "punishable", answerThree: "plus on block", answerFour: "unblockable", correctAnswer: 1, fighter: Fighter.eddy))
            list.append(Question(text: "What is Eddy\'s b+3,3 on block?", answerOne: "0 to -3", answerTwo: "-5 to -8", answerThree: "-15 to -16", answerFour: "-13 to -14", correctAnswer: 4, fighter: Fighter.eddy))
            list.append(Question(text: "Eddy is a cheap character", answerOne: "Yes", answerTwo: "yes", answerThree: "Obviously", answerFour: "No I'm just a scrub who can't play tekken", correctAnswer: 4, fighter: Fighter.eddy))
        case .king:
            list.append(Question(text: "Another name for King's Tomahawk throw is...?", answerOne: "Burning Knuckle", answerTwo: "Hades Drop", answerThree: "Rodeo", answerFour: "Shining Wizard", correctAnswer: 4, fighter: Fighter.king))
            
        case .jin:
            
            list.append(Question(text: "What is WS+2 on block", answerOne: "-15", answerTwo: "-9", answerThree: "-12 to -11", answerFour: "-11 to -10", correctAnswer: 3, fighter: Fighter.jin))
            list.append(Question(text: "What is b+2,1 on block", answerOne: "-9 to -8", answerTwo: "-11 to -10", answerThree: "-5", answerFour: "-2", correctAnswer: 1, fighter: Fighter.jin))
            list.append(Question(text: "d/b+4 on hit", answerOne: "+5", answerTwo: "+3 to +4", answerThree: "+1 to +2", answerFour: "KND", correctAnswer: 2, fighter: Fighter.jin))
            list.append(Question(text: "d+3+4 on block (Can Cans)", answerOne: "-19 to -17", answerTwo: "-13 to -12", answerThree: "-12 to -11", answerFour: "-9", correctAnswer: 1, fighter: Fighter.jin))
        case .paul:
            list.append(Question(text: "Has Paul been in every game?", answerOne: "Yes", answerTwo: "No", answerThree: "", answerFour: "", correctAnswer: 1, fighter: Fighter.paul))
            list.append(Question(text: "How unsafe is Paul's moce qcf+2, the \"Deathfist\"", answerOne: "-20", answerTwo: "-15", answerThree: "-17", answerFour: "-9", correctAnswer: 3, fighter: Fighter.paul))
            
            
        default:
            
            list.append(Question(text: "Woops! There are no questions for this character yet.", answerOne: "X", answerTwo: "X", answerThree: "X", answerFour: "X", correctAnswer: 1, fighter: Fighter.akuma))
            print("placeholder") //This is a placeholder eventually every character case will be covered
            
        }
        
        
    }
    
}
