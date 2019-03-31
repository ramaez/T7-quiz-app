//
//  QuizViewController.swift
//  T7 Quiz App
//
//  Created by Ruben Amaez on 2/6/19.
//  Copyright © 2019 ramaez. All rights reserved.
//

import UIKit

/*
 To-do: add a delegate so that when you pick a character from the main view controller it passes that character to this view controller
 
 
 change value of characterpicked based on this delegate before allQuestions is initialized in viewDidLoad()
 
*/

protocol QuizViewControllerDelegate {
    func selectFighter() -> String?
}

class QuizViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var progressBar: UIView!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var answerBoxA: UIButton!
    @IBOutlet weak var answerBoxB: UIButton!
    @IBOutlet weak var answerBoxC: UIButton!
    @IBOutlet weak var answerBoxD: UIButton!
    
    var delegate: QuizViewControllerDelegate?
    
    var characterPicked: Fighter = .akuma
    var pickedAnswer: Int = 0
    var questionNumber: Int = 0
    let nameConversionObject = NameConversion()
    var score: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //Use Delegate to get the fighter we want, then convert the fighter to an enum and use it to get the right questions
        if((delegate) != nil) {
            print(delegate!.selectFighter() ?? "nil")
            characterPicked = nameConversionObject.convertStringToFighter(name: delegate!.selectFighter()!)
        }
        
        answerBoxA.titleLabel!.adjustsFontSizeToFitWidth = true
        answerBoxB.titleLabel!.adjustsFontSizeToFitWidth = true
        answerBoxC.titleLabel!.adjustsFontSizeToFitWidth = true
        answerBoxD.titleLabel!.adjustsFontSizeToFitWidth = true
        
        nextQuestion()
    }
    
    @IBAction func answerPressed(_ sender: AnyObject) {
        print("pressed a button")
        if sender.tag == 1 {
            pickedAnswer = 1
        }
        else if sender.tag == 2 {
            pickedAnswer = 2
        }
        else if sender.tag == 3 {
            pickedAnswer = 3
        }
        else if sender.tag == 4 {
            pickedAnswer = 4
        }
        
        checkAnswer()
        
        questionNumber = questionNumber + 1
        
        nextQuestion()
    }
    
    func checkAnswer() {
        let correctAnswer = QuizBank(picked: characterPicked).list[questionNumber].answer
        
        if pickedAnswer == correctAnswer {
            score = score + 1
            ProgressHUD.showSuccess("Correct")
            print("Correct")
        }
        else {
            ProgressHUD.showError("Wrong")
            print("Wrong")
        }
    }
    
    func updateUI() {
        let totalNumberOfQuestions: Int = QuizBank(picked: characterPicked).list.count
        scoreLabel.text = "Score: \(score)"
        progressLabel.text = "\(questionNumber + 1) / \(totalNumberOfQuestions)"
        progressBar.frame.size.width = (view.frame.size.width/CGFloat(totalNumberOfQuestions)) * CGFloat(questionNumber + 1)
        
    }
    
    func nextQuestion() {
        if questionNumber <= QuizBank(picked: characterPicked).list.count - 1 {
            questionLabel.text = QuizBank(picked: characterPicked).list[questionNumber].questionText
            let answerA = QuizBank(picked: characterPicked).list[questionNumber].firstAnswerText
            let answerB = QuizBank(picked: characterPicked).list[questionNumber].secondAnswerText
            let answerC = QuizBank(picked: characterPicked).list[questionNumber].thirdAnswerText
            let answerD = QuizBank(picked: characterPicked).list[questionNumber].fourthAnswerText
            if answerA == "" {
                answerBoxA.isHidden = true
            }
            else if answerA != "" {
                answerBoxA.isHidden = false
            }
            if answerB == "" {
                answerBoxB.isHidden = true
            }
            else if answerB != "" {
                answerBoxB.isHidden = false
            }
            if answerC == "" {
                answerBoxC.isHidden = true
            }
            else if answerC != "" {
                answerBoxC.isHidden = false
            }
            if answerD == "" {
                answerBoxD.isHidden = true
            }
            else if answerD != "" {
                answerBoxD.isHidden = false
            }
            answerBoxA.setTitle(answerA, for: .normal)
            answerBoxB.setTitle(answerB, for: .normal)
            answerBoxC.setTitle(answerC, for: .normal)
            answerBoxD.setTitle(answerD, for: .normal)
            updateUI()
        }
        else {
            let alert = UIAlertController(title: "Done", message: "Reset to the beginning?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default) { (UIAlertAction) in
                self.startOver()
            }
            
            alert.addAction(restartAction)
            
            present(alert, animated: true, completion: nil)
        }
    }
    
    func startOver() {
        
        score = 0
        questionNumber = 0
        nextQuestion()
        
    }

}
