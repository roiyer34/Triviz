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
        let questionOne = Question(question: "Who scored the winning goal in the 94th minute to tie up the game against Borussia Dortmund from a 4-0 deposit at halftime?", arrayOfAnswers: ["Naldo", "Harit", "Di Santo", "Meyer"],  learnMore: "http://www.bbc.com/sport/football/42115328", correctAnswer: 0)
        
        let questionTwo = Question(question: "Which team beat Burnley 1-0 to rise to fourth place in the Priemer League table?", arrayOfAnswers: ["Manchester City","Southampton", "Arsenal", "Tottenham Hotspur"], learnMore: "http://www.telegraph.co.uk/football/2017/11/26/burnley-vs-arsenal-premier-league-live-score-updates/", correctAnswer: 2)
        
        let questionThree = Question(question: "How many goals were scored by Real Madrid against Malaga?", arrayOfAnswers: ["3","5", "2", "1"], learnMore: "http://www.bbc.com/sport/football/42115314", correctAnswer: 0)
        
        let questionFour = Question(question: "Which team has yet to earn a single point in the Serie A(Matchday 12)?", arrayOfAnswers: ["Las Palmas","Benevento","SPAL", "Cordoba"], learnMore: "https://en.wikipedia.org/wiki/Benevento_Calcio", correctAnswer: 1)
        
        let questionFive = Question(question: "Which Dallas quarterback recently beat the Redskins 38-14 by throwing two passes for a touchdown?", arrayOfAnswers: ["Tony Romo","Dak Prescott", "Kurt Cousins", "Tom Brady"], learnMore: "http://www.sportingnews.com/nfl/news/dallas-cowboys-washington-redskins-score-live-updates-results-highlights-thursday-night/2g40pqoh9il01qaa5zd8qs6ea", correctAnswer: 1)
        
        let questionSix = Question(question: "Which two European teams are in Peru's World Cup group matchup?", arrayOfAnswers: ["France and Sweden", "Italy and Germany", "Iceland and Poland", "France and Denmark"], learnMore: "http://www.telegraph.co.uk/football/2017/12/01/world-cup-draw-2018-live-updates-england-latest/", correctAnswer: 3)
        
        let questionSeven = Question(question: "Which European nation did not qualify for the 2018 World Cup?", arrayOfAnswers: ["Poland","Iceland", "Chile", "Italy"], learnMore:"http://www.telegraph.co.uk/football/2017/12/01/world-cup-draw-2018-live-updates-england-latest/", correctAnswer: 3)
        
        let questionEight = Question(question: "Which person took over as the Tennessee Assistant Director in college football?", arrayOfAnswers: ["Phillip Fulmer", "Jose Mourinho", "Bill Besic", "Marco Reus"], learnMore: "https://www.seccountry.com/tennessee/tennessee-football-vols-phillip-fulmer-players-react", correctAnswer: 0)
        
        let questionNine = Question(question: "Which Rams player recently got fined for a hit on a New Orleans tight end?", arrayOfAnswers: ["Brandon Allen", "Mark Barron", "Blake Countess", "Malcolm Butler"], learnMore: "http://profootballtalk.nbcsports.com/2017/12/01/blake-countess-fined-24308-for-hit-on-coby-fleener/", correctAnswer: 2)
        
        let questionTen = Question(question: "What is the Patriots current win streak in the 2017-2018 NFL season?", arrayOfAnswers: ["7", "9", "2", "1"], learnMore: "https://www.cbssports.com/nfl/news/nfl-odds-picks-week-13-advanced-computer-model-loves-patriots-and-titans/", correctAnswer: 3)
        
        let questionEleven = Question(question: "In the sport of cricket, who was the winner of the most recent match of New Zealand vs the West Indies?", arrayOfAnswers: ["New Zealand does not play cricket", "New Zealand", "West Indies", "The West Indies do not play cricket"] , learnMore: "http://www.firstpost.com/firstcricket/sports-news/live-new-zealand-vs-west-indies-1st-test-day-2-at-wellington-scores-and-updates-4237705.html", correctAnswer: 1)
        
        let questionTweleve = Question(question: "Pei Hwa Prebyterian Highschool just won their national chapionship in which sport where players throw balls on a net as hard as possible?", arrayOfAnswers: ["Tchoukball","Basketball","Volleyball","Water Polo"], learnMore: "https://en.wikipedia.org/wiki/Tchoukball", correctAnswer: 0)
        
        let questionThirteen = Question(question: "What is the name of the recently created sport this year, which is identical to soccer expect hands are used to pass the ball instead of feet?", arrayOfAnswers: ["Throwball", "Arena Ball", "Handball", "Ringer"], learnMore: "http://www.topendsports.com/sport/new/ringer.htm", correctAnswer: 3)
        
        let questionFourteen = Question(question: "What team beat the Atlanta Hawks to continue on to a ten game win streak?", arrayOfAnswers: ["Rockets", "Cavaliers", "Wariors", "Bulls"], learnMore: "http://www.espn.com/nba/story/_/id/21625374/cleveland-cavaliers-extend-win-streak-10-games", correctAnswer: 1)
        
        let questionFifteen = Question(question: "Which player recently returned from an injury to support the Spurs in a win against Memphis?", arrayOfAnswers: ["Dele Alli", "Kawhi Leonard", "Pau Gasol", "Tony Parker"], learnMore: ",http://www.nba.com/article/2017/12/01/san-antonio-spurs-kawhi-leonard-closer-returning-action?collection=news#/", correctAnswer: 2)
        
        let questionSixteen = Question(question: "Throwback Question! What record setting quarterback was the 82nd draft-pick in 1979?" , arrayOfAnswers: ["Joe Montana", "John Elway", "Steve Young", "Jim Plunkett"], learnMore: "https://en.wikipedia.org/wiki/Joe_Montana", correctAnswer: 0)
        
        let questionSeventeen = Question(question: "Throwback Question! Which team did Babe Ruth play for before joining the Boston Red Sox?", arrayOfAnswers: ["New York Yankees", "Cincinnati Reds", "Baltimore Orioles", "Boston Browns"], learnMore: "https://en.wikipedia.org/wiki/Babe_Ruth", correctAnswer: 2)
        
        let questionEighteen = Question(question: "Throwback Question! How many Grand Slams does Boris Becker have?" , arrayOfAnswers: ["0", "8", "1", "6"], learnMore: "https://en.wikipedia.org/wiki/Boris_Becker", correctAnswer: 3)
        
        let questionNineteen = Question(question: "What team is currently second in La Liga?", arrayOfAnswers: ["Real Madrid", "Barcelona", "Atletico Madrid", "Valencia"], learnMore: "http://www.espnfc.com/club/valencia/94/squad", correctAnswer: 3)
        
        let questionTwenty = Question(question: "Who is the current top scorer in La Liga(after Matchday 13)?", arrayOfAnswers: ["Simeone Zaza", "Lionel Messi", "Luis Suarez", "Aritz Aduriz"], learnMore: "http://www.bbc.com/sport/football/spanish-la-liga/top-scorers", correctAnswer: 1)
        
        let questionTwentyOne = Question(question: "On Friday, December 1st, former Trump national security advisor, Micheal Flynn, pleaded guilty for what crime?", arrayOfAnswers: ["Stealing from the White House", "Spying on President Trump","Lying to the FBI", "Stealing money froma bank"], learnMore: "http://thehill.com/homenews/administration/362967-trump-tweet-on-firing-flynn-for-lying-to-fbi-was-authored-by-trumps", correctAnswer: 2)
        
        let questionTwentyTwo = Question(question: "By how many votes did the most recent GOP tax reform bill pass?", arrayOfAnswers: ["2329", "2", "3486", "23"], learnMore: "http://www.cnn.com/specials/politics/trumpmerica", correctAnswer: 1)
        
        let questionTwentyThree = Question(question: "In which country was President Kenyatta recently sworn into a second term as President?", arrayOfAnswers: ["Nigeria", "Malaysia","Kenya","Egypt"], learnMore: "https://www.economist.com/news/world-week/21731878-politics-week", correctAnswer: 2)
        
        let questionTwentyFour = Question(question: "Who did Donald Trump recently critize for not focusing enough on terrorism in Islamic countries?", arrayOfAnswers: ["Kenyatta","Obama","Pence","May"], learnMore: "https://www.economist.com/news/world-week/21731878-politics-week", correctAnswer: 3)
        
      let questionTwentyFive = Question(question: "Which country recently created a missle powerful enough to hit Washington DC from its own country", arrayOfAnswers: ["Canada", "China", "North Korea", "Russia"], learnMore: "https://www.economist.com/news/world-week/21731878-politics-week", correctAnswer: 2)
        
        let questionTwentySix = Question(question: "Which state in Australia passed an act to allow doctors assist patients with terminal illnesses with sucicide?", arrayOfAnswers: ["Victoria","Tasmania","New South Wales","Sydney"], learnMore: "https://www.economist.com/news/world-week/21731878-politics-week", correctAnswer: 0)
        
        let questionTwentySeven = Question(question: "The deputy prime minister in what country recently resigned because she feared her government would fall apart?", arrayOfAnswers: ["Ireland", "North Korea", "United States", "Italy" ], learnMore: "https://www.economist.com/news/world-week/21731878-politics-week", correctAnswer: 0)
        
        let questionTwentyEight = Question(question: "Throwback Question! Who wrote the Declaration of Independence?", arrayOfAnswers: ["John Adams", "James Madison", "Thomas Jefferson", "George Washington"], learnMore: "http://www.americaslibrary.gov/aa/jefferson/aa_jefferson_declar_1.html", correctAnswer: 2)
        
        let questionTwentyNine = Question(question: "Throwback Question! In what year did George Washington become President?", arrayOfAnswers: ["1799","1789","1802","1899"], learnMore: "https://www.biography.com/people/george-washington-9524786", correctAnswer: 1)
        
        let questionThirty = Question(question: "Throwback Question! Who was Barack Obama's runningmate in the 2008 election?", arrayOfAnswers: ["Joe Biden","Mike Pence","Mitt Romney","Donald Trump"], learnMore: "https://www.biography.com/people/joe-biden-39995", correctAnswer: 0)
        
        let questionThirtyOne = Question(question: "Former El Salvadorian President, Funes, was recently fined for what crime?", arrayOfAnswers: ["illegally entering the United States","Speeding","Drug dealing","Illicit enrichment"], learnMore: "https://www.economist.com/news/world-week/21731878-politics-week", correctAnswer: 3)
        
        let questionThirtyTwo = Question(question: "In which country did citizens protest for scrapping term limit laws and letting President Morales lead for a fourth term?", arrayOfAnswers: ["Belgium","Bolivia","Peru","Brazil"], learnMore: "https://www.economist.com/news/world-week/21731878-politics-week", correctAnswer: 1)
        
        let questionThirtyThree = Question(question: "What is the name of the German chancellor who desires to completely reform Germany's government?", arrayOfAnswers: ["Angela Merkel","Donald Trump","Mesut Ozil","Theresa May"], learnMore: "https://www.economist.com/news/world-week/21731878-politics-week", correctAnswer: 0)
        
        let questionThirtyFour = Question(question: "A blogger in which country was arrested for seven years for protesting about oil spills in this country?", arrayOfAnswers: ["China","Saudi Arabia","Vietnam","India"], learnMore: "https://www.economist.com/news/world-week/21731878-politics-week", correctAnswer: 2)
        
        let questionThirtyFive = Question(question: "Mount Agung erupted on what Indonesian island to force more than 100,000 people to evacuate?", arrayOfAnswers: ["Bali","Java","Sumatra","New Guinea"], learnMore: "https://www.economist.com/news/asia/21731864-monitoring-them-all-no-small-task-fiery-mount-agung-just-one-127-active-volcanoes", correctAnswer: 0)
        
        let questionThirtySix = Question(question: "The most recent major tax bill debated supports what party?", arrayOfAnswers: ["Democratic","Third Parties", "Its Neutral", "Republican"], learnMore: "https://www.nbcnews.com/politics/politics-news/senate-repubicans-nearing-vote-tax-bill-after-1-trillion-snag-n825591", correctAnswer: 3)
        
        let questionThirtySeven = Question(question: "Which US city defended its 'sanctuary city' status after a shooting?", arrayOfAnswers: ["Washington DC","San Francisco","Las Vegas", "Dallas"], learnMore: "https://www.nbcnews.com/news/us-news/kathryn-steinle-killing-san-francisco-defends-sanctuary-city-status-amid-n825836", correctAnswer: 1)
        
        let questionThirtyEight = Question(question: "According to a US general, which two countries are building special space weapons to target US satellites?", arrayOfAnswers: ["North Korea and China","North Korea and Iraq","North Korea and Pakistan","China and Russia"], learnMore: "http://www.cnn.com/2017/12/02/politics/russia-china-space-weapons/index.html", correctAnswer: 3)
        
        let questionThirtyNine = Question(question:
        "Democrat Doug Joneswon the election for state Senator in which state?", arrayOfAnswers: ["Alabama","Illinois","Alaska","Oregon"], learnMore: "https://www.washingtonpost.com/politics/?utm_term=.9ed4aab3c2a9", correctAnswer: 0)
        
        let questionForty = Question(question: "Throwback Question! Who was the president during the 9/11 attacks?", arrayOfAnswers: ["George Bush","Barack Obama","Richard Nixon","Bill Clinton"], learnMore: "http://www.history.com/topics/9-11-attack", correctAnswer: 0)
        
        let questionFortyOne = Question(question: "Throwback Question! What is the highest metacritic rating for a video game of all time, out of 100?", arrayOfAnswers: ["98","100","99","96"], learnMore: "https://www.metacritic.com/browse/games.score/metascore/all/all/filtered?sort=desc", correctAnswer: 2)
        
        let questionFortyTwo = Question(question: "Which movie is based on a book published in 2012 by the author R.J. Palacio?", arrayOfAnswers: ["Wonder","Justice League","Roman J. Israel, Esq.","The Star"], learnMore: "http://www.wonder.movie/?story", correctAnswer: 0)
        
        let questionFortyThree = Question(question: "Which Netfix original series has been renewed for a season three?", arrayOfAnswers: ["Black Mirror","Stranger Things","The Good Place","Master of None"], learnMore: "http://www.cnn.com/2017/12/01/entertainment/stranger-things-season-3/index.html", correctAnswer: 1)
        
        let questionFortyFour = Question(question: "Which movie trailer has broke the record for most views in a day?", arrayOfAnswers: ["Black Panther","Star Wars the Last Jedi","Avengers: Infinity War","The Greatest Showman"], learnMore: "http://ew.com/movies/2017/11/30/avengers-infinity-war-trailer-record/", correctAnswer: 2)
        
        let questionFortyFive = Question(question: "Which artist released the album Songs of Experience?", arrayOfAnswers: ["Taylor Swift","Maroon 5","Shovels and Rope","U2"], learnMore: "http://ew.com/music/2017/12/01/u2-songs-of-experience-ew-review/", correctAnswer: 3)
        
        let questionFortySix = Question(question: "Which superhero lost his main weapon in his latest movie?", arrayOfAnswers: ["Thor","Aquaman","Batman","Wonder Woman"], learnMore: "https://www.inverse.com/article/35945-thor-ragnarok-mjolnir-destroyed-hela-powers-lightning-thunder", correctAnswer: 0)
        
        let questionFortySeven = Question(question: "What video game has the highest metacritic rating this year?", arrayOfAnswers: ["Super Mario Odyssey","Legend of Zelda Breath of the Wild for Wii U","Divinity Original Sin 2","Persona 5"], learnMore: "http://www.metacritic.com/browse/games/score/metascore/year/all/filtered?sort=desc", correctAnswer: 0)
        
        let questionFortyEight = Question(question: "Which PC Video Game has the highest metacritic rating of this year?", arrayOfAnswers: ["Legend of Zelda: Breath of the Wild","Divinity Original Sin 2","Destiny 2","Overwatch"], learnMore: "http://www.metacritic.com/browse/games/score/metascore/year/pc/filtered?sort=desc", correctAnswer: 1)
        
        let questionFortyNine = Question(question: "Which video console is the best selling of 2017 so far", arrayOfAnswers: ["Xbox One","Playstation Four","Xbox One X","Nintendo Switch"], learnMore: "http://www.ign.com/articles/2017/10/19/nintendo-switch-was-the-top-selling-console-in-the-us-in-september", correctAnswer: 3)
        
        let questionFifty = Question(question: "Throwback question! Which video game was the first fps.", arrayOfAnswers: ["Wolfenstein","Doom","Quake","Maze War"], learnMore: "https://www.polygon.com/features/2015/5/21/8627231/the-first-first-person-shooter", correctAnswer: 3)
        
        let questionFiftyOne = Question(question: "Who plays Donald Trump on Saturday Night Live?", arrayOfAnswers: ["Mikey Day","Kate McKinnon","Alec Baldwin","Aziz Ansari"], learnMore: "https://mic.com/articles/155471/who-plays-donald-trump-on-snl-here-s-a-preview-of-the-show-s-election-coverage#.htx7cgVJT", correctAnswer: 2)
        
        let questionFiftyTwo = Question(question: "Which cartoon has been turned into a broadway show and started running on December 4?", arrayOfAnswers: ["Spongebob Squarepants","Ninjago","Mickey Mouse","Duck Tales"], learnMore: "https://www.nytimes.com/2017/11/30/theater/whats-new-in-nyc-theater.html?rref=collection%2Fspotlightcollection%2Farts-listings&action=click&contentCollection=arts&region=rank&module=package&version=highlights&contentPlacement=2&pgtype=collection", correctAnswer: 0)
        
        let questionFiftyThree = Question(question: "Which is not one of the names of the 3 nephews in the 2017 reboot of the tv show Ducktales?", arrayOfAnswers: ["Huey","Louie","Dewey","Webey"], learnMore: "http://disneyxd.disney.com/ducktales", correctAnswer: 3)
        
        let questionFiftyFour = Question(question: "What videogames are being played professionaly in australia in big tournaments in the month of December as of December 4th?", arrayOfAnswers: ["PUBG and Starcraft 2","Overwatch and Doom","Overwatch and Mario Cart 8","Starwars Battlefront 2 and Call of Duty WW2"], learnMore: "http://www.ign.com/articles/2017/10/12/ign-esports-whats-coming-up-in-hearthstone-cod-smite-dota-2-and-more", correctAnswer: 0)
        
        let questionFiftyFive = Question(question: "Which music awards ceremony is being held this month?", arrayOfAnswers: ["The Grammys","The Oscars","The Kenedey Center Honors","The iHeart Radio Music Festival"], learnMore: "https://www.washingtonpost.com/entertainment/the-latest-kennedy-honors-held-without-the-trumps/2017/12/03/d75aa906-d87f-11e7-a241-0848315642d0_story.html?utm_term=.65a96c0a4cb5", correctAnswer: 0)
        
        let questionFiftySix = Question(question: "Which movie is being screened and includeds Denzel Washington?", arrayOfAnswers: ["Wonder","Roman J. Israel Esq.","Coco","The Equalizer 2"], learnMore: "https://www.washingtonpost.com/goingoutguide/movies/coco-and-other-movies-to-watch-with-your-kids/2017/11/22/6985fdde-cae4-11e7-b0cf-7689a9f2d84e_story.html?utm_term=.2db85c5a5782", correctAnswer: 1)
        
        let questionSixty = Question(question: "In the movie Thor Ragnarok, Bruce Banner turns into what supernatural character when he becomes angry?", arrayOfAnswers: ["Batman","Thor","Hulk","The Human Torch"], learnMore: "http://www.imdb.com/title/tt3501632/", correctAnswer: 2)
        
        let questionSixtyOne = Question(question: "Which Album has the songs Believe and Like Home", arrayOfAnswers: ["Reputation", "Songs of Experience", "Revival", "Divide"], learnMore: "https://en.wikipedia.org/wiki/Revival_(Eminem_album)", correctAnswer: 2)
        
        let questionSixtyTwo = Question(question: "Which song has the most views on Youtube", arrayOfAnswers: ["Gangnam Style","See You Again","Look What You Made Me Do","Despacito"], learnMore: "http://www.telegraph.co.uk/technology/0/most-watched-youtube-videos-of-all-time/", correctAnswer: 3)
        
        let questionSixtyThree = Question(question: "Which artist topped the Billboard top 100 artists chart for the first time?", arrayOfAnswers: ["Ed Sheeran","Eminem","Cardi B","Taylor Swift"], learnMore: "http://www.complex.com/music/2017/12/eminem-tops-billboard-artist-100-chart-thanks-revival-debut", correctAnswer: 1)
        
        let questionSixtyFour = Question(question: "Which popular TV show is having its official end in 2019?", arrayOfAnswers: ["The Simpsons", "Family Guy", "Game of Thrones", "Supernatural"], learnMore: "http://www.cnn.com/2018/01/04/entertainment/game-of-thrones-2019/index.html", correctAnswer: 2)
        
        let questionSixtyFive = Question(question: "Which artist is going to headline coachella?", arrayOfAnswers: ["Imagine Dragons", "Beyonce", "Ed Sheeran", "Post Malone"], learnMore: "http://www.cnn.com/2018/01/03/entertainment/coachella-2018-lineup/index.html", correctAnswer: 1)
        
        let questionSixtySix = Question(question: "Which esports league started this year?", arrayOfAnswers: ["Overwatch League", "The Call of Duty League", "The World of Warcraft League", "The PUBG league"], learnMore: "https://overwatchleague.com/en-us/?utm_source=Google%20US&utm_medium=Search&utm_content=23027314&utm_campaign=BLZ_OWL_L_Launch_SEM_Phase_1_Q4_2017_NA", correctAnswer: 0)
        
        let questionSixtySeven = Question(question: "What color is being worn at the Golden Globes to fight for gender equality?", arrayOfAnswers: ["White", "Rainbow", "Gold", "Black"], learnMore: "http://www.cnn.com/2018/01/05/entertainment/golden-globes-2018-black-dress-explainer/index.html", correctAnswer: 3)
        //let questionSixtyEight = Question(question: "Which gameshow host recently got brain surgery?", arrayOfAnswers: [""], learnMore: "", correctAnswer: Int)
        
        var topic = Topic(name: "Sports", image: UIImage(named: "Sports")!, description:
            "Think you know all about the sports world? This topic inclues questions about recent fixtures and matches from a variety of sports, from football to futbol.", questionPool: [questionOne, questionTwo, questionThree, questionFour, questionFive, questionSix, questionSeven, questionEight, questionNine, questionTen, questionEleven, questionTweleve, questionThirteen, questionFourteen, questionFifteen, questionSixteen, questionSeventeen, questionEighteen, questionNineteen, questionTwenty])
        var topics: [Topic] = []
        topics.append(topic)
        
        topic = Topic(name: "Politics", image: UIImage(named: "Politics")!, description: "From Russia to Brazil, this quiz test your knowledge on world politics.", questionPool: [questionTwentyOne, questionTwentyTwo, questionTwentyThree, questionTwentyFour, questionTwentyFive, questionTwentySix, questionTwentySeven, questionTwentyEight, questionTwentyNine, questionThirty, questionThirtyOne, questionThirtyTwo, questionThirtyThree, questionThirtyFour, questionThirtyFive, questionThirtySix, questionThirtySeven, questionThirtyEight, questionThirtyNine, questionForty])
        topics.append(topic)
        
        topic = Topic(name: "Gaming", image: UIImage(named:"Gaming")!, description: "Think you know the new hits and flops in the gaming industry? This quiz tests your knowledge on video games", questionPool: [questionFortyOne,questionFortySeven, questionFortyEight, questionFortyNine, questionFifty, questionFiftyFour, questionSixtySix,])
        topics.append(topic)
        
        topic = Topic(name: "Movies and TV Shows", image: UIImage(named:"Movies")!, description: "From the hottest episodes and movies, this quiz tests your knowledge on the recent additions to the world of movies and tv shows." , questionPool: [questionFortyTwo, questionFortyThree, questionFortyFour,  questionFortySix, questionFiftyOne, questionFiftyTwo, questionFiftyThree, questionFiftySix, questionSixty, questionSixtyFour, questionSixtySeven])
        topics.append(topic)
        
        topic = Topic(name: "Music", image: UIImage(named:"Music")!, description: "From clasical music to classic rock. This quiz tests your understanding of the music world.", questionPool: [questionFortyFive, questionFiftyFive, questionSixtyOne, questionSixtyTwo, questionSixtyThree, questionSixtyFive])
        topics.append(topic)
        
        let game = Game(topics:topics)
        self.topics = game.topics
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    @IBOutlet var descriptionPage: UIButton!
    
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
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if (segue.destination is TopicViewController) {
            let indexPath = self.tableView.indexPathForSelectedRow
            let rowIndex = indexPath?.row
            if (indexPath == nil || rowIndex == nil) {
                let alert = UIAlertController(title: "Error 79833", message: "No topic selected, please select a topic", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Okay", style: .default))
                self.present(alert, animated: true, completion: nil)
                return
            }
            let pickedTopic = topics[rowIndex!]
        
            // Show the TopicViewController
            //let topicVC = storyboard?.instantiateViewController(withIdentifier: "topicPage") as! TopicViewController
            let topicVC = segue.destination as? TopicViewController
            topicVC?.pickedTopic = pickedTopic
            topicVC?.title = "Topic Overview"
            //navigationController?.pushViewController(topicVC, animated: true)
        }
    }
    
}
