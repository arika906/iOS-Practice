//
//  contentTableViewCell.swift
//  DesignedExpandableTableViewController
//
//  Created by Arika Afrin Boshra on 11/2/20.
//  Copyright © 2020 com.arika.boshra@gmail. All rights reserved.
//

import UIKit

class contentTableViewCell: UITableViewCell {

    @IBOutlet weak var contentLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
