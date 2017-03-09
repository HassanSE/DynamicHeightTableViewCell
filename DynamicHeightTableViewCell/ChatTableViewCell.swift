//
//  ChatTableViewCell.swift
//  DynamicHeightTableViewCell
//
//  Created by Muhammad Hassan on 09/03/2017.
//  Copyright © 2017 Muhammad Hassan. All rights reserved.
//

import UIKit

class ChatTableViewCell: UITableViewCell {
    
    @IBOutlet var userDisplayNameLabel: UILabel!
    @IBOutlet var messageLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
