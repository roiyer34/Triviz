//
//  ViewController.swift
//  Triviz
//
//  Created by Rohan I on 11/19/17.
//  Copyright © 2017 Purple Potatoes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var topic = Topic(name: "Sports", description:
            "something", questionPool: [])
        var topics: [Topic] = []
        topics.append(topic)
        
        topic = Topic(name: "Politics", description: "something", questionPool: [])
        topics.append(topic)
        
        topic = Topic(name: "Entertainment", description: "something", questionPool: [])
        topics.append(topic)
        
        var game = Game(topics:topics)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func buttonSportsClicked(_ sender: Any) {
    }
    @IBAction func buttonPoliticsClicked(_ sender: Any) {
    }
    @IBAction func buttonEntertainmentClicked(_ sender: Any) {
    }
}

