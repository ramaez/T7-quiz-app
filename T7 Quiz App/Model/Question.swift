//
//  Question.swift
//  T7 Quiz App
//
//  Created by Ruben Amaez on 2/6/19.
//  Copyright © 2019 ramaez. All rights reserved.
//

import Foundation

class Question {
    
    let questionText: String
    let firstAnswerText: String
    let secondAnswerText: String
    let thirdAnswerText: String
    let fourthAnswerText: String
    let answer: Int
    let character: Fighter
    
    init(text: String, answerOne: String, answerTwo: String, answerThree: String, answerFour: String, correctAnswer: Int, fighter: Fighter) {
        questionText = text
        firstAnswerText = answerOne
        secondAnswerText = answerTwo
        thirdAnswerText = answerThree
        fourthAnswerText = answerFour
        answer = correctAnswer
        character = fighter
    }
    
    
}
