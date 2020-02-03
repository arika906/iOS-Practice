//
//  TableViewCell.swift
//  dataParsingJSon
//
//  Created by Arika Afrin Boshra on 30/1/20.
//  Copyright © 2020 com.arika.boshra@gmail. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var contactLbl: UILabel!
    @IBOutlet weak var messageLbl: UILabel!
    @IBOutlet weak var locationLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
       
       public func configuredatafunction(with json:Receverinfo){
           
           contactLbl.text = json.senderNumber ?? ""
           messageLbl.text     = json.message ?? ""
           locationLbl.text = json.donationLocation ?? ""
    }
}
