//
//  SecondViewController.swift
//  SegueControl
//
//  Created by Arika Afrin Boshra on 13/2/20.
//  Copyright © 2020 com.arika.boshra@gmail. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var imageOnSecondViewController: UIImageView!
    
    @IBOutlet weak var LabelOnSecondViewController: UILabel!
    
    @IBAction func Back(_ sender: Any) {
        //dismiss(animated: true, completion: nil)
        self.navigationController?.popViewController(animated: true)
    }
    
    
    var name = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        LabelOnSecondViewController.text = name
        imageOnSecondViewController.image = UIImage(named: name)
        
        self.navigationItem.hidesBackButton = true
    }
    
    

}
