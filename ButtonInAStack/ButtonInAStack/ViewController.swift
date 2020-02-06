//
//  ViewController.swift
//  ButtonInAStack
//
//  Created by Arika Afrin Boshra on 6/2/20.
//  Copyright © 2020 com.arika.boshra@gmail. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func BtnClick(_ sender: UIButton) {
       // print("buttonClicked", sender.tag)
        
        switch sender.tag {
            
        case sender.tag:
            label.text = String(sender.tag)
            break;
//        case 1:
//            label.text = String(sender.tag)
//            break;
//        case 2:
//            label.text = String(sender.tag)
//            break;
//        case 3:
//            label.text = String(sender.tag)
//            break;
//        case 4:
//            label.text = String(sender.tag)
//            break;
        default:
            break;
        }
        
    }
    
}

