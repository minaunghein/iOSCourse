//
//  DictTableViewCell.swift
//  dictionary
//
//  Created by Min Aung Hein on 4/10/16.
//  Copyright © 2016 smag. All rights reserved.
//

import UIKit

class DictTableViewCell: UITableViewCell {

    let alternateColor = UIColor.init(red: 74/255, green: 173/255, blue: 156/255, alpha: 0.4)
    
    @IBOutlet weak var enLabel: UILabel!
    @IBOutlet weak var kindLabel: UILabel!
    @IBOutlet weak var defLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configureCell(_ def:Definition)
    {
        self.enLabel.text = def.en
        self.kindLabel.text = "(\(def.s!))"
        self.defLabel.text = def.mm
        if def.sn % 2 == 1
        { self.backgroundColor = alternateColor }
        else { self.backgroundColor = UIColor.white}
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
