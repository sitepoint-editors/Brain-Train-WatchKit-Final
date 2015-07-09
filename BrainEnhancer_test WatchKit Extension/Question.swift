//
//  Question.swift
//  BrainEnhancer_test
//
//  Created by Brett Romero on 6/1/15.
//  Copyright (c) 2015 Brett Romero. All rights reserved.
//

import UIKit

class Question: NSObject {
    var questionText: String
    var answerId: Int
    var answers = [Int: String]()
    
    init(questionText:String, answerId: Int, answers:[Int:String]){
        self.questionText = questionText
        self.answerId = answerId
        self.answers = answers
    }
}

class QuestionManager: NSObject {
     func getAnswerText(questionsArray:[Question], answerId:Int, questionId:Int) -> String{
        let question = questionsArray[questionId]
        return question.answers[answerId]!
    }
    
    func checkAnswer(questionsArray:[Question], answerId:Int, questionId:Int) -> Bool{
        let question = questionsArray[questionId]
        if(question.answerId == answerId){
            return true
        }
        return false
    }
}
