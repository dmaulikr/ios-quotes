//
//  ViewController.swift
//  Quotes
//
//  Created by Quintin Smith on 3/25/16.
//  Copyright © 2016 wasatchcode. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let datasource:  QuotesDataSource
    
    required init?(coder aDecoder: NSCoder) {
        let quotes = [
            Quote(author: "Albert Einstein", text: "Two things are infinite:the universe and human stupidity; and I am not sure about the universe"),
            Quote(author: "Steve Jobs", text: "Design is not just what it looks like and feels like. Design it how it works"),
            Quote(author: "John Lennon", text: "Life is what happens when you're busy making other plans"),
            Quote(author: "Albert Einstein", text: "Any fool can know. The point is to understand"),
            Quote(author: "A.A Milne", text: "If ever there is a tomorrow when we’re not together… there is " + "something you must always remember. " +
                "You are braver than you believe, stronger than you seem, smarter than you think. But the most important thing is, even if we’re apart… I’ll always be with you."),
            Quote(author: "Calvin Coolidge", text: "Nothing in the world can take the place of persistence. Talent will not; nothing is more common than unsuccessful men with talent. Genius will not; unrewarded genius is almost a proverb. Education will not; the world is full of educated derelicts. Persistence and determination alone are omnipotent. The slogan ‘Press On!’ has solved and always will solve the problems of the human race"),
            Quote(author: "Walt Disney", text: "The way to get started is to quit talking and begin doing")
            
        ]
        self.datasource = QuotesDataSource(quotes: quotes)
        super.init(coder: aDecoder)
    }

}

//MARK: - View LifeCycle
extension ViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.estimatedRowHeight = 109
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.dataSource = datasource
        tableView.reloadData()
    }
}



