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
    @IBOutlet var imageView: UIImageView!
    
    
    @IBAction func backAction(sender:UIBarButtonItem) {
        if let nav = self.navigationController {
            nav.popViewController(animated: true)
        } else {
            self.dismiss(animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Set up navigation bar
        self.title = "Topic Overview"
        //self.navigationItem.hidesBackButton = true
        //let backButton = UIBarButtonItem(title: "< Topics", style: UIBarButtonItemStyle.plain, target: self, action: #selector(TopicViewController.backAction(sender:)))
        //self.navigationItem.setLeftBarButton(backButton, animated: true)
        
        // Do any additional setup after loading the view.
        topicLabel.text = pickedTopic.name
        descriptionLabel.text = pickedTopic.description
        imageView.loadGif(name: pickedTopic.imageTwo)
        
        
        
        
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation
    
    @IBAction func startQuizButtonClicked(_ sender: Any) {
        let questionVC = storyboard?.instantiateViewController(withIdentifier: "questionVC") as! QuestionViewController
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if (segue.destination is QuestionViewController) {
            
            let questionVC = segue.destination as? QuestionViewController
            questionVC?.topic = pickedTopic
            questionVC?.title = "Quiz"
            //navigationController?.pushViewController(topicVC, animated: true)
        }
    }

}
