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
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerChoice1Button: UIButton!
    @IBOutlet var answerChoice2Button: UIButton!
    @IBOutlet var answerChoice3Button: UIButton!
    @IBOutlet var answerChoice4Button: UIButton!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
       
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
