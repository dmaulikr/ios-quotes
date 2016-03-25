//
//  QuoteCell.swift
//  Quotes
//
//  Created by Quintin Smith on 3/25/16.
//  Copyright © 2016 wasatchcode. All rights reserved.
//

import UIKit

class QuoteCell: UITableViewCell {

    
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var quoteLabel: UILabel!
    
    var author: String? {
        didSet {
            authorLabel.text = author
        }
    }
    
    var quoteText: String? {
        didSet {
            quoteLabel.text = quoteText
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
