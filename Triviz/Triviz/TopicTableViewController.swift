//
//  TopicTableViewController.swift
//  Triviz
//
//  Created by Rohan I on 12/1/17.
//  Copyright © 2017 Purple Potatoes. All rights reserved.
//

import UIKit

class TopicTableViewController: UITableViewController {

    //MARK: Properties
    
    var topics: [Topic] = []
    
    //MARK: Private Methods
    
    //private func loadTopicsFromGame(_ aGame: Game) {
    //    self.topics = aGame.topics
    //}
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var topic = Topic(name: "Sports", image: UIImage(named: "Sports")!, description:
            "something", questionPool: [])
        var topics: [Topic] = []
        topics.append(topic)
        
        topic = Topic(name: "Politics", image: UIImage(named: "Politics")!, description: "something", questionPool: [])
        topics.append(topic)
        
        topic = Topic(name: "Entertainment", image: UIImage(named: "Entertainment")!, description: "something", questionPool: [])
        topics.append(topic)
        
        var game = Game(topics:topics)
        self.topics = game.topics
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return topics.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Table view cells are reused and should be dequeued using a cell identifier.
        let cellIdentifier = "TopicTableViewCell"
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? TopicTableViewCell  else {
            fatalError("The dequeued cell is not an instance of TopicTableViewCell.")
        }

        // Configure the cell...
        let topic = topics[indexPath.row]
        cell.nameLabel.text = topic.name
        cell.iconImage.image = topic.image
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
