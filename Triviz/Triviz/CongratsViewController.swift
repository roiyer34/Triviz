//
//  CongratsViewController.swift
//  Triviz
//
//  Created by Rohan I on 12/8/17.
//  Copyright © 2017 Purple Potatoes. All rights reserved.
//

import UIKit

class CongratsViewController: UIViewController {

    var score: Int = 0
    
    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var noteLabel: UILabel!
    @IBOutlet var image: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        scoreLabel.text = "\(score) / 10"
        if (score < 4) {
            noteLabel.text = "Not bad if this is golf."
            image.loadGif(name: "NiceTry")
            
        }
        if ((score > 3) && (score < 7)) {
            noteLabel.text = "Meh, needs a little more improvement."
            image.loadGif(name: "Fair")
        }
        if ((score > 6) && (score < 10)) {
            noteLabel.text = "You are pretty good at this."
             image.loadGif(name: "PrettyGood")
        }
        if (score == 10) {
            noteLabel.text = "You are a legend :)"
            image.loadGif(name: "Legend")
        }
        if (score > 10) {
            noteLabel.text = "You have successfully broken the game"
        }
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
