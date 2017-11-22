//
//  Topic.swift
//  Triviz
//
//  Created by Rohan I on 11/21/17.
//  Copyright © 2017 Purple Potatoes. All rights reserved.
//
//  Point: This class represents a trivia topic
//         -- name
//         -- question pool
//         -- description
//         -- Average Score


import Foundation

class Topic {
    
    let name: String
    let description: String
    var questionPool: [Question]
    var averageScore: Float
    
    init(name: String, description: String, questionPool: [Question], averageScore: Float = 0.0) {
        self.name = name
        self.description = description
        self.questionPool = questionPool
        self.averageScore = averageScore
    }

}

