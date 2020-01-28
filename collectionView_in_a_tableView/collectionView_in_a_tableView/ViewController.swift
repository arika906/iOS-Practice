//
//  ViewController.swift
//  collectionView_in_a_tableView
//
//  Created by Arika Afrin Boshra on 26/1/20.
//  Copyright © 2020 com.arika.boshra@gmail. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let categoryArray = ["Dice category 1", "Dice category 2", "Dice category 3", "Dice category 4", "Dice category 5", "Dice category 6"]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoryArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: TableViewCell = self.tableView.dequeueReusableCell(withIdentifier: "tblcell", for: indexPath) as! TableViewCell
        
        cell.categoryLbl.text = categoryArray[indexPath.row]
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return view.frame.height/4.0
    }
}

