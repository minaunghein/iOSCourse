//
//  BookTableViewCell.swift
//  bookstore
//
//  Created by Min Aung Hein on 8/10/16.
//  Copyright © 2016 smag. All rights reserved.
//

import UIKit

class BookTableViewCell: UITableViewCell {

    @IBOutlet weak var bookTitleLabel: UILabel!
    
    @IBOutlet weak var bookDescLabel: UILabel!
    
    
    @IBOutlet weak var picture: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
