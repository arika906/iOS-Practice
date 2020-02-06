//
//  ViewController.swift
//  DataSendingSecondViewController
//
//  Created by Arika Afrin Boshra on 4/2/20.
//  Copyright © 2020 com.arika.boshra@gmail. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

   
    @IBOutlet weak var textfield: UITextField!
    
    @IBOutlet weak var btnText: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonCLicked(_ sender: UIButton) {
       // print("buttonClicked")
        let vc:SecondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        vc.datatext = textfield.text ?? ""

        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    



}

