//
//  ViewController.swift
//  expandableTableView
//
//  Created by Al Mustakim on 16/1/20.
//  Copyright © 2020 Al Mustakim. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tblData: UITableView!
    
    var imgArray = ["Burger", "French-fries", "Nachos", "Noodle", "Pasta", "Pizza", "Subway"]
    
    var nameArray = ["Burger", "French-fries", "Nachos", "Noodle", "Pasta", "Pizza", "Subway"]
    
    var selectedIndex = -1
    var isCollapce = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        tblData.delegate = self
        tblData.dataSource = self
        tblData.estimatedRowHeight = 507
        tblData.rowHeight =  UITableView.automaticDimension
         //tblData.reloadData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tblData.reloadData()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
       
        if self.selectedIndex == indexPath.row && isCollapce == true
        {
            return 507
        }
       else
        {
            print(view.frame.height/6)
            return view.frame.height/20
        }
      //  return 301
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(nameArray.count)
        return nameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblData.dequeueReusableCell(withIdentifier: "HometableViewCell", for: indexPath) as! TableViewCell
        
        print(nameArray[indexPath.row])
        cell.lblTitle.text = nameArray[indexPath.row]
        cell.img.image = UIImage(named: "\(imgArray[indexPath.row])")
        
       // tblData.reloadData()
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        if selectedIndex == indexPath.row
        {
            if self.isCollapce == false
            {
                self.isCollapce = true
            }
            else
            {
                self.isCollapce = true
            }
        }
        else
        {
            self.isCollapce = true
        }
        
        self.selectedIndex = indexPath.row
        tblData.reloadRows(at: [indexPath], with: .automatic)
         //tblData.reloadData()
        
        
    }

}

