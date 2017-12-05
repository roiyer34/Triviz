//
//  TopicViewController.swift
//  Triviz
//
//  Created by Rohan I on 12/1/17.
//  Copyright © 2017 Purple Potatoes. All rights reserved.
//

import UIKit

class TopicViewController: UIViewController {
    
    var pickedTopic: Topic = Topic()
    @IBOutlet var topicLabel: UITextField!
    @IBOutlet var descriptionLabel: UITextView!
    @IBOutlet var imageLabel: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation
    
    @IBAction func startQuizButtonClicked(_ sender: Any) {
        let questionVC = storyboard?.instantiateViewController(withIdentifier: "questionPage") as! QuestionViewController
        questionVC.topic = pickedTopic
        navigationController?.pushViewController(questionVC, animated: true)
    }
    
    
    /*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
