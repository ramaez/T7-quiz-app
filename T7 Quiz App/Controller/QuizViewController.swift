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
    let nameConversionObject = NameConversion()
    //var questionsForOneCharacter: [Question] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
    }
    
    override func viewDidAppear(_ animated: Bool) {
        //Use Delegate to get the fighter we want, then convert the fighter to an enum and use it to get the right questions
        if((delegate) != nil) {
            print(delegate!.selectFighter() ?? "nil")
            characterPicked = nameConversionObject.convertStringToFighter(name: delegate!.selectFighter()!)
        }
        
        let allQuestions: QuizBank = QuizBank(picked: characterPicked)
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
    }

}
