//
//  ViewController.swift
//  DesignedExpandableTableViewController
//
//  Created by Arika Afrin Boshra on 11/2/20.
//  Copyright © 2020 com.arika.boshra@gmail. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var titleArray = ["Title 1", "Title 2", "Title 3"]
    var sectionIsExpanded = [false, false, false]
    var numberOfActualSection = 4
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return titleArray.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sectionIsExpanded[section] ? (1+numberOfActualSection) : 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell: headerTableViewCell = self.tableView.dequeueReusableCell(withIdentifier: "headerCell", for: indexPath) as! headerTableViewCell
            
            cell.titleLbl.text = titleArray[indexPath.section]
            
            if sectionIsExpanded[indexPath.section]{
                cell.setExpanded()
            } else{
                cell.setCollapsed()
            }
            return cell
        } else {
            let cell: contentTableViewCell = self.tableView.dequeueReusableCell(withIdentifier: "contentCell", for: indexPath) as! contentTableViewCell
            
            cell.contentLbl.text = "Section: \(indexPath.section); row \(indexPath.row)"
            return cell
        }
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            sectionIsExpanded[indexPath.section] = !sectionIsExpanded[indexPath.section]
            
            tableView.reloadSections([indexPath.section], with: .automatic)
        }
    }


}

