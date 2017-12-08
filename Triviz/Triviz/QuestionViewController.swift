//
//  QuestionViewController.swift
//  Triviz
//
//  Created by Lakshman Krishnaiyer on 12/3/17.
//  Copyright © 2017 Purple Potatoes. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    var topic: Topic = Topic()

    
    @IBOutlet var topicLabel: UILabel!
    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerChoice1Button: UIButton!
    @IBOutlet var answerChoice2Button: UIButton!
    @IBOutlet var answerChoice3Button: UIButton!
    @IBOutlet var answerChoice4Button: UIButton!
    
    var answeredQs: [Int] = []
    var score: Int = 0
    var total: Int = 10
    var question: Question = Question(question: "", arrayOfAnswers: [], learnMore: "", correctAnswer: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view.
        topicLabel.text = topic.name
        scoreLabel.text = "\(score) / \(total)"
        
        // Pick a question
        let questionIndex = Int(arc4random_uniform(20))
        question = topic.questionPool[questionIndex]
        questionLabel.text = question.question
        answerChoice1Button.setTitle(question.arrayOfAnswers[0],  for: UIControlState.normal)
        answerChoice2Button.setTitle(question.arrayOfAnswers[1], for: UIControlState.normal)
        answerChoice3Button.setTitle(question.arrayOfAnswers[2], for: UIControlState.normal)
        answerChoice4Button.setTitle(question.arrayOfAnswers[3], for: UIControlState.normal)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func button1Clicked(_ sender: Any) {
        }
    @IBAction func button2Clicked(_ sender: Any) {
    }
    @IBAction func button3Clicked(_ sender: Any) {
    }
    
    @IBAction func button4Clicked(_ sender: Any) {
    }
    
    func checkAnswer(answerClicked: String){
        let correctAnswerString = question.arrayOfAnswers[question.correctAnswer]
        if(correctAnswerString == answerClicked) {
            // Correct
            //UIAlertController
        }
        else {
            // Incorrect Answer
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
