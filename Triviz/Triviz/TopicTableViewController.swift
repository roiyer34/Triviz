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

        // Do any additional setup after loading the view, typically from a nib.
        let questionOne = Question(question: "Who scored the winning goal in the 94th minute to tie up the game against Borussia Dortmund from a 4-0 deposit at halftime", arrayOfAnswers: ["Naldo", "Harit", "Di Santo", "Meyer"],  learnMore: "http://www.bbc.com/sport/football/42115328", correctAnswer: 0)
        
        let questionTwo = Question(question: "Which team beat Burnley 1-0 to rise to fourth place in the EPL table", arrayOfAnswers: ["Manchester City","Southampton", "Arsenal", "Tottenham Hotspur"], learnMore: "http://www.telegraph.co.uk/football/2017/11/26/burnley-vs-arsenal-premier-league-live-score-updates/", correctAnswer: 2)
        
        let questionThree = Question(question: "How many goals were scored by Real Madrid against Malaga", arrayOfAnswers: ["3","5", "2", "1"], learnMore: "http://www.bbc.com/sport/football/42115314", correctAnswer: 0)
        
        let questionFour = Question(question: "Which team has yet to earn a single point in the Serie A", arrayOfAnswers: ["Las Palmas","Benevento","SPAL", "Cordoba"], learnMore: "https://en.wikipedia.org/wiki/Benevento_Calcio", correctAnswer: 1)
        
        let questionFive = Question(question: "Which Dallas quarterback recently beat the Redskins 38-14 by throwing two passes for a touchdown?", arrayOfAnswers: ["Tony Romo","Dak Prescott", "Kurt Cousins", "Tom Brady"], learnMore: "http://www.sportingnews.com/nfl/news/dallas-cowboys-washington-redskins-score-live-updates-results-highlights-thursday-night/2g40pqoh9il01qaa5zd8qs6ea", correctAnswer: 1)
        
        let questionSix = Question(question: "Which two European teams are in Peru's World Cup group matchup?", arrayOfAnswers: ["France and Sweden", "Italy and Germany", "Iceland and Poland", "France and Denmark"], learnMore: "http://www.telegraph.co.uk/football/2017/12/01/world-cup-draw-2018-live-updates-england-latest/", correctAnswer: 3)
        
        let questionSeven = Question(question: "Which major European nation did not qualify for the 2018 World Cup?", arrayOfAnswers: ["Poland","Iceland", "Chile", "Italy"], learnMore:"http://www.telegraph.co.uk/football/2017/12/01/world-cup-draw-2018-live-updates-england-latest/", correctAnswer: 3)
        
        let questionEight = Question(question: "Which person took over as the Tennessee AD in college football", arrayOfAnswers: ["Phillip Fulmer", "Jose Mourinho", "Bill Besic", "Marco Reus"], learnMore: "https://www.seccountry.com/tennessee/tennessee-football-vols-phillip-fulmer-players-react", correctAnswer: 0)
        
        let questionNine = Question(question: "Which Rams player recently got fined for a hit on a New Orleans tight end?", arrayOfAnswers: ["Brandon Allen", "Mark Barron", "Blake Countess", "Malcolm Butler"], learnMore: "http://profootballtalk.nbcsports.com/2017/12/01/blake-countess-fined-24308-for-hit-on-coby-fleener/", correctAnswer: 2)
        
        let questionTen = Question(question: "What is the Patriots current win streak in the 2017-2018 season?"  , arrayOfAnswers: ["7", "9", "2", "1"], learnMore: "https://www.cbssports.com/nfl/news/nfl-odds-picks-week-13-advanced-computer-model-loves-patriots-and-titans/", correctAnswer: 0)
        
        let questionEleven = Question(question: "In the sport of cricket, who was the winner of the most recent match of New Zealand vs the West Indies?", arrayOfAnswers: ["New Zealand does not play cricket", "New Zealand", "West Indies", "The West Indies do not play cricket"] , learnMore: "http://www.firstpost.com/firstcricket/sports-news/live-new-zealand-vs-west-indies-1st-test-day-2-at-wellington-scores-and-updates-4237705.html", correctAnswer: 1)
        
        let questionTweleve = Question(question: "Pei Hwa Prebyterian Highschool just won their national chapionship in which sport where people throw balls on a net as hard as possible?", arrayOfAnswers: ["Tchoukball","Basketball","Volleyball","Water Polo"], learnMore: "https://en.wikipedia.org/wiki/Tchoukball", correctAnswer: 0)
        
        let questionThirteen = Question(question: "What is the name of the recently created sport this year, which is identical to soccer expect hands are used to pass the ball instead of feet?", arrayOfAnswers: ["Throwball", "Arena Ball", "Handball", "Ringer"], learnMore: "http://www.topendsports.com/sport/new/ringer.htm", correctAnswer: 3)
        
        let questionFourteen = Question(question: "What team beat the Atlanta Hawks to continue on to a ten game win streak?", arrayOfAnswers: ["Rockets", "Cavaliers", "Patriots", "Redskins"], learnMore: "http://www.espn.com/nba/story/_/id/21625374/cleveland-cavaliers-extend-win-streak-10-games", correctAnswer: 1)
        
        let questionFifteen = Question(question: "Which player recently returned from an injury to support Spurs in a win against Memphis?", arrayOfAnswers: ["Dele Alli", "", "Kawhi Leonard", "Pau Gasol", "Tony Parker"], learnMore: ",http://www.nba.com/article/2017/12/01/san-antonio-spurs-kawhi-leonard-closer-returning-action?collection=news#/", correctAnswer: 2)
        
        let questionSixteen = Question(question: "Throwback Question! What record setting quarterback was the 82nd draft-pick in 1979?" , arrayOfAnswers: ["Joe Montana", "John Madden", "Peyton Manning", "Bill Gates"], learnMore: "https://en.wikipedia.org/wiki/Joe_Montana", correctAnswer: 0)
        
        let questionSeventeen = Question(question: "Throwback Question! What team did Babe Ruth play for before joining the Boston Red Sox", arrayOfAnswers: ["New York Yankees", "Cincinnati Reds", "Baltimore Orioles", "Boston Browns"], learnMore: "https://en.wikipedia.org/wiki/Babe_Ruth", correctAnswer: 2)
        
        let questionEighteen = Question(question: "Throwback Question! How many Grand Slams does Boris Becker have" , arrayOfAnswers: ["0", "8", "1", "6"], learnMore: "https://en.wikipedia.org/wiki/Boris_Becker", correctAnswer: 3)
        
        let questionNineteen = Question(question: "What team is currently second in La Liga?", arrayOfAnswers: ["Real Madrid", "Barcelona", "Athletico Madrid", "Valencia"], learnMore: "http://www.espnfc.com/club/valencia/94/squad", correctAnswer: 3)
        
        let questionTwenty = Question(question: "Who is the current top scorer in La Liga(after Matchday 13)", arrayOfAnswers: ["Simeone Zaza", "Lionel Messi", "Luis Suarez", "Aritz Aduriz"], learnMore: "http://www.bbc.com/sport/football/spanish-la-liga/top-scorers", correctAnswer: 1)
        
        let questionTwentyOne = Question(question: "On Friday, December 1st, former Trump national security advisor, Micheal Flynn, pleaded guilty for what crime?", arrayOfAnswers: ["Stealing from the White House", "Spying on President Trump","Lying to the FBI", "Stealing money froma bank"], learnMore: "http://thehill.com/homenews/administration/362967-trump-tweet-on-firing-flynn-for-lying-to-fbi-was-authored-by-trumps", correctAnswer: 2)
        
        let questionTwentyTwo = Question(question: "By how many votes did the most recent GOP tax reform bill pass", arrayOfAnswers: ["2329", "2", "3486", "23"], learnMore: "http://www.cnn.com/specials/politics/trumpmerica", correctAnswer: 1)
        
        let questionTwentyThree = Question(question: "In which country was President Kenyatta sworn into a second term as President", arrayOfAnswers: ["Nigeria", "Malaysia","Kenya","Egypt"], learnMore: "https://www.economist.com/news/world-week/21731878-politics-week", correctAnswer: 2)
        
        let questionTwentyFour = Question(question: "Who did Donald Trump recently critize for not focusing enough on terrorism in Islamic countries?", arrayOfAnswers: ["Kenyatta","Obama","Pence","May"], learnMore: "https://www.economist.com/news/world-week/21731878-politics-week", correctAnswer: 3)
        
      let questionTwentyFive = Question(question: "Which country recently created a missle powerful enough to hit Washington DC from its own country", arrayOfAnswers: ["Canada", "China", "North Korea", "Russia"], learnMore: "https://www.economist.com/news/world-week/21731878-politics-week", correctAnswer: 2)
        
        let questionTwentySix = Question(question: "Which state in Australia passed an act to allow doctors assist patients with terminal illnesses with sucicide?", arrayOfAnswers: ["Victoria","Tasmania","New South Wales","Sydney"], learnMore: "https://www.economist.com/news/world-week/21731878-politics-week", correctAnswer: 0)
        
        let questionTwentySeven = Question(question: "The deputy prime minister in what country recently resigned because she feared her government would fall apart", arrayOfAnswers: ["Ireland", "North Korea", "United States", "Italy" ], learnMore: "https://www.economist.com/news/world-week/21731878-politics-week", correctAnswer: 0)
        
        let questionTwentyEight = Question(question: "Throwback Question! Who wrote the Declaration of Independence?", arrayOfAnswers: ["John Adams", "James Madison", "Thomas Jefferson", "George Washington"], learnMore: "http://www.americaslibrary.gov/aa/jefferson/aa_jefferson_declar_1.html", correctAnswer: 2)
        
        let questionTwentyNine = Question(question: "Throwback Question! In what year did George Washington become President?", arrayOfAnswers: ["1799","1789","1802","1899"], learnMore: "https://www.biography.com/people/george-washington-9524786", correctAnswer: 1)
        
        let questionThirty = Question(question: "Throwback Question! Who was Barack Obama's runningmate in the 2008 election?", arrayOfAnswers: ["Joe Biden","Mike Pence","Mitt Romney","Donald Trump"], learnMore: "https://www.biography.com/people/joe-biden-39995", correctAnswer: 0)
        
        let questionThirtyOne = Question(question: "Former El Salvadorian President, Funes, was recently fined for what crime?", arrayOfAnswers: ["illegally entering the United States","Speeding","Drug dealing","Illicit enrichment"], learnMore: "https://www.economist.com/news/world-week/21731878-politics-week", correctAnswer: 3)
        
        let questionThirtyTwo = Question(question: "In which country did citizens protest for scrapping term limit laws and letting President Morales earn a fourth term?", arrayOfAnswers: ["Belgium","Bolivia","Peru","Brazil"], learnMore: "https://www.economist.com/news/world-week/21731878-politics-week", correctAnswer: 1)
        
        let questionThirtyThree = Question(question: "What is the name of the German chancellor who desires to completely reform Germany's government?", arrayOfAnswers: ["Angela Merkel","Donald Trump","Mesut Ozil","Theresa May"], learnMore: "https://www.economist.com/news/world-week/21731878-politics-week", correctAnswer: 0)
        
        let questionThirtyFour = Question(question: "A blogger in what country was arrested for seven years for protesting about oil spills in the country", arrayOfAnswers: ["China","Saudi Arabia","Vietnam","India"], learnMore: "https://www.economist.com/news/world-week/21731878-politics-week", correctAnswer: 2)
        
        let questionThirtyFive = Question(question: "Mount Agung erupted on what Indonesian island to force more than 100,000 people to evacuate", arrayOfAnswers: ["Bali","Java","Sumatra","New Guinea"], learnMore: "https://www.economist.com/news/asia/21731864-monitoring-them-all-no-small-task-fiery-mount-agung-just-one-127-active-volcanoes", correctAnswer: 0)
        
        let questionThirtySix = Question(question: "The most recent major tax bill debated supports what party?", arrayOfAnswers: ["Democratic","Third Parties", "Its Neutral", "Republican"], learnMore: "https://www.nbcnews.com/politics/politics-news/senate-repubicans-nearing-vote-tax-bill-after-1-trillion-snag-n825591", correctAnswer: 3)
        
        let questionThirtySeven = Question(question: "Which US city defended its 'sanctuary city' status after a shooting", arrayOfAnswers: ["Washington DC","San Francisco","Las Vegas", "Dallas"], learnMore: "https://www.nbcnews.com/news/us-news/kathryn-steinle-killing-san-francisco-defends-sanctuary-city-status-amid-n825836", correctAnswer: 1)
        
        let questionThirtyEight = Question(question: "According to a US general, which two countries are building special space weapons to target US satellites?", arrayOfAnswers: ["North Korea and China","North Korea and Iraq","North Korea and Pakistan","China and Russia"], learnMore: "http://www.cnn.com/2017/12/02/politics/russia-china-space-weapons/index.html", correctAnswer: 3)
        
        let questionThirtyNine = Question(question:
        "Democrat Doug Jones is currently running for state governer in which state?", arrayOfAnswers: ["Alabama","Illinois","Alaska","Oregon"], learnMore: "https://www.washingtonpost.com/politics/?utm_term=.9ed4aab3c2a9", correctAnswer: 0)
        
        let questionForty = Question(question: "Throwback Question! Who was the president during the 9/11 attacks?", arrayOfAnswers: ["George Bush","Barack Obama","Richard Nixon","Bill Clinton"], learnMore: "http://www.history.com/topics/9-11-attack", correctAnswer: 0)
        
        var topic = Topic(name: "Sports", image: UIImage(named: "Sports")!, description:
            "Think you know all about the sports world? This topic inclues questions about recent fixtures and matches from a variety of sports, from futbol to football", questionPool: [questionOne, questionTwo, questionThree, questionFour, questionFive, questionSix, questionSeven, questionEight, questionNine, questionTen, questionEleven, questionTweleve, questionThirteen, questionFourteen, questionFifteen, questionSixteen, questionSeventeen, questionEighteen, questionNineteen, questionTwenty])
        var topics: [Topic] = []
        topics.append(topic)
        
        topic = Topic(name: "Politics", image: UIImage(named: "Politics")!, description: "From Russia to Brazil, this quiz tests your knowledge on world politics.", questionPool: [questionTwentyOne, questionTwentyTwo, questionTwentyThree, questionTwentyFour, questionTwentyFive, questionTwentySix, questionTwentySeven, questionTwentyEight, questionTwentyNine, questionThirty, questionThirtyOne, questionThirtyTwo, questionThirtyThree, questionThirtyFour, questionThirtyFive, questionThirtySix, questionThirtySeven, questionThirtyEight, questionThirtyNine, questionForty])
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
