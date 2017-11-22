//
//  Game.swift
//  Triviz
//
//  Created by Rohan I on 11/21/17.
//  Copyright © 2017 Purple Potatoes. All rights reserved.
//
//  Point: This class represents the overall game. There are
//         -- Topics
//         -- Picked Topic
//         -- Score
//         

import Foundation

class Game {
    
    let topics: [Topic]
    var pickedTopic: Int
    var score: Float
    
    init(topics: [Topic], pickedTopic: Int, score: Float){
        self.topics = topics
        self.pickedTopic = pickedTopic
        self.score = score
    }
}

