//
//  SecondViewController.swift
//  DataSendingSecondViewController
//
//  Created by Arika Afrin Boshra on 4/2/20.
//  Copyright © 2020 com.arika.boshra@gmail. All rights reserved.
//

import UIKit


class SecondViewController: UIViewController {
    
    @IBOutlet weak var secondLbl: UILabel!
    
  
    var datatext:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        secondLbl.text = datatext
    
    }

  

}
