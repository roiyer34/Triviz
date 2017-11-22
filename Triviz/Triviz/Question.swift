//
//  Question.swift
//  Triviz
//
//  Created by Rohan I on 11/21/17.
//  Copyright © 2017 Purple Potatoes. All rights reserved.
//
//  Point: This class represents just one question.  A question has 4 parts:
//          -- A question
//          -- An array of possible answers
//          -- A Learn More link
//          -- An index to the correct answer

import Foundation

class Question {

    var question: String
    var arrayOfAnswers: [String] = ["answer0", "answer1", "answer2", "answer3"]
    var correctAnswer: Int
    var learnMore: String
    
    init(question: String, arrayOfAnswers: [String], learnMore: String, correctAnswer: Int)
    {
        self.question = question
        self.arrayOfAnswers = arrayOfAnswers
        self.correctAnswer = correctAnswer
        self.learnMore = learnMore
    }
    
}
