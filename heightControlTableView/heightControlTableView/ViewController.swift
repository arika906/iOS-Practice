//
//  ViewController.swift
//  heightControlTableView
//
//  Created by Arika Afrin Boshra on 29/1/20.
//  Copyright © 2020 com.arika.boshra@gmail. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    let lblData: [String] = ["Alex",
                             "Bob",
                             "Alice- Alice loves pizza. Alice bought a pizza for his friend. Alice ate the pizza alone.",
                             "Hog",
                             "Raju- Raju eats rice. He loves burger. So he looks for buger.",
                             "Ami nasta o khai",
                             "Ami vaat khai",
                             "Alex",
                             "Bob",
                             "Alice- Alice loves pizza. Alice bought a pizza for his friend. Alice ate the pizza alone.",
                             "Hog",
                             "Raju- Raju eats rice. He loves burger. So he looks for buger.",
                             "Ami nasta o khai",
                             "Ami vaat khai",
                             "Alex",
                             "Bob",
                             "Alice- Alice loves pizza. Alice bought a pizza for his friend. Alice ate the pizza alone.",
                             "Hog",
                             "Raju- Raju eats rice. He loves burger. So he looks for buger.",
                             "Ami nasta o khai",
                             "Ami vaat khai"]
    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //tblView.rowHeight = 100
        tblView.rowHeight = UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lblData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let bcell: TableViewCell = self.tblView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
    
        bcell.cellLabel.text = lblData[indexPath.row]
       // bcell.cellLabel.numberOfLines = 0

        return bcell
    }
}

