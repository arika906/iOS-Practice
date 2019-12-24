//
//  ViewController.swift
//  atableview
//
//  Created by Admin on 12/10/19.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let array = ["a", "v", "q", "r"]
    
    
    @IBOutlet weak var table: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        table.delegate = self
        table.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.label.text = array[indexPath.row]
        
        return cell
    }


}

