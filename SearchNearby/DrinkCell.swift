//
//  DrinkCell.swift
//  SearchNearby
//
//  Created by 马超 on 16/2/17.
//  Copyright © 2016年 RexMa. All rights reserved.
//

import UIKit


let drinkCellHeight = 90.0
let DrinkCellIdentifier = "DrinkCell"

class DrinkCell: UITableViewCell {

    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
