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
import UIKit

class Topic {
    
    let name: String
    let image: UIImage
    let description: String
    var questionPool: [Question]
    var averageScore: Float
    let imageTwo: String
    
    init(name: String = "", image: UIImage = UIImage(), description: String = "", questionPool: [Question] = [], averageScore: Float = 0.0, imageTwo: String = "") {
        self.name = name
        self.image = image
        self.description = description
        self.questionPool = questionPool
        self.averageScore = averageScore
        self.imageTwo = imageTwo
    }

}

