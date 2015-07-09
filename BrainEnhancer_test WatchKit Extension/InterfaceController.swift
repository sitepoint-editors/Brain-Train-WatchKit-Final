//
//  InterfaceController.swift
//  BrainEnhancer_test WatchKit Extension
//
//  Created by Brett Romero on 5/31/15.
//  Copyright (c) 2015 Brett Romero. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    var counter = 0
    let questionManager = QuestionManager()
    var questions = [
        Question(questionText: "What is the capital of Arizona?",
            answerId: 0,
            answers:[0:"Phoenix",1:"Flagstaff"]),
        Question(questionText: "What year was the American Revolution?",
            answerId: 1,
            answers:[0:"1778",1:"1776"])
    ]
    
    
    @IBOutlet var questionLabel: WKInterfaceLabel!
    
    @IBOutlet var buttonA: WKInterfaceButton!
    
    @IBOutlet var buttonB: WKInterfaceButton!
    
    func setupNextQuestion(){
        
        questionLabel.setText(questions[counter].questionText)
        let answerText = questionManager.getAnswerText(questions, answerId: 0, questionId: counter)
        buttonA.setTitle(answerText)
        buttonA.setBackgroundColor(UIColor.blackColor())
        let answerText2 = questionManager.getAnswerText(questions, answerId: 1, questionId: counter)
        buttonB.setTitle(answerText2)
        buttonB.setBackgroundColor(UIColor.blackColor())
    }
    
    @IBAction func buttonA_click() {
        if(questionManager.checkAnswer(questions,answerId: 0,questionId: counter)){
            counter++
            if(counter < questions.count){
                setupNextQuestion()
            }
        }
        else {
            buttonA.setBackgroundColor(UIColor.redColor())
        }
    }
    
    
    @IBAction func buttonB_click() {
        if(questionManager.checkAnswer(questions,answerId: 1,questionId: counter)){
            counter++
            if(counter < questions.count){
                setupNextQuestion()
            }
        }
        else {
            buttonB.setBackgroundColor(UIColor.redColor())
        }
    }
    
    /*
    func CheckAnswer(button: WKInterfaceButton, answerId: Int){
        if(questionManager.checkAnswer(questions,answerId: answerId,questionId: counter)){
            button.setBackgroundColor(UIColor.redColor())
        }
        else {
            setupNextQuestion()
        }
    }
    */
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        setupNextQuestion()
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
