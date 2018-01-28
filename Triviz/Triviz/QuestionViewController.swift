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

    
    @IBOutlet weak var topicLabel: UITextField!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet var answerChoice1Button: UIButton!
    @IBOutlet var answerChoice2Button: UIButton!
    @IBOutlet var answerChoice3Button: UIButton!
    @IBOutlet var answerChoice4Button: UIButton!
    
    
    var answeredQs: [Int] = []
    var correctAnswers: Int = 0
    var total: Int = 11
    var question: Question = Question(question: "", arrayOfAnswers: [], learnMore: "", correctAnswer: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        showNewQuestion()
    }

    func showNewQuestion() {
         //Check if we've hit the total
        if (answeredQs.count == total) {
            if let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CongratsVC") as? CongratsViewController
            {
                vc.score = self.correctAnswers
                self.present(vc, animated: true, completion: nil)
            }
            return
        }
        
        // Do any additional setup after loading the view.
        topicLabel.text = topic.name
        scoreLabel.text = "\(correctAnswers) / \(answeredQs.count)"
        
        // Pick a question
        var questionIndex = Int(arc4random_uniform(UInt32(topic.questionPool.count)))
        
        //Make sure the question is new
        while (answeredQs.contains(questionIndex)) {
            //Look for a new question
            questionIndex = Int(arc4random_uniform(UInt32(topic.questionPool.count)))
        }
        //Make sure you track all asked questions
        answeredQs.append(questionIndex)
        
        print("questionIndex = \(String(questionIndex))")
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
    

    func checkAnswer(answerClicked: String) {
        let correctAnswerString = question.arrayOfAnswers[question.correctAnswer]
        
        let learnMoreAction = UIAlertAction(title: "Learn More", style: .default) {
            (action) in
            print("Opening link: " + self.question.learnMore)
            UIApplication.shared.open(URL(string: self.question.learnMore)!, options: [:], completionHandler: nil)
            self.showNewQuestion()
            
        }
        let okayAction = UIAlertAction(title: "Okay", style: .default) {
            (action) in
            self.showNewQuestion()
        }
        if(correctAnswerString == answerClicked) {
            // Correct - Show Green box
            let alert = UIAlertController(title: "Correct Answer :-D", message: "Way to go!", preferredStyle: .alert)
            alert.addAction(okayAction)
            alert.addAction(learnMoreAction)
            self.present(alert, animated: true, completion: nil)
            correctAnswers = correctAnswers + 1
        }
        else {
            // Incorrect Answer - Show Red Box
            let alert = UIAlertController(title: "Incorrect Answer", message: "Better luck next time", preferredStyle: .alert)
            alert.addAction(okayAction)
            alert.addAction(learnMoreAction)
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func button1Clicked(_ sender: Any) {
        let answerClicked = answerChoice1Button.titleLabel?.text
        checkAnswer(answerClicked: answerClicked!)
        
    }
    @IBAction func button2Clicked(_ sender: Any) {
        let answerClicked = answerChoice2Button.titleLabel?.text
        checkAnswer(answerClicked: answerClicked!)

    }
    @IBAction func button3Clicked(_ sender: Any) {
        let answerClicked = answerChoice3Button.titleLabel?.text
        checkAnswer(answerClicked: answerClicked!)

    }
    
    @IBAction func button4Clicked(_ sender: Any) {
        let answerClicked = answerChoice4Button.titleLabel?.text
        checkAnswer(answerClicked: answerClicked!)

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
