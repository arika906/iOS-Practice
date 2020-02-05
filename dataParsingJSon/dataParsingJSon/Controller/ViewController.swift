//
//  ViewController.swift
//  dataParsingJSon
//
//  Created by Arika Afrin Boshra on 30/1/20.
//  Copyright © 2020 com.arika.boshra@gmail. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

var token_val = "a644a1844cae5891ceac8ad086f0000a901f2df2"
var id1:Int = 1

class ViewController: UIViewController {
    
    var responsedata = [Receverinfo]()

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        dataloadfromServer()
    }
    
    let headers: HTTPHeaders = ["Authorization":"Token \(token_val)"]
    
    func dataloadfromServer(){
        //receiveinfo.removeAll()
        
        AF.request("https://api.myjson.com/bins/rigg2",
                   method: .get, headers: headers
        ).response { response in
            
            //debugPrint(response)
            
            let items = JSON(response.value as Any)
            //print(items)
            
            DispatchQueue.main.async() {
                
                let data = AcceptRequest(items)
                //print(data.receverinfo?.count)
                
                if let counter = data.receverinfo?.count{
                    //print(counter)
                    for i in 0..<counter{
                        if let value = data.receverinfo?[i]{
                            self.responsedata.append(value)
                        }
                        
                    }
                }
                self.tableView.reloadData()
                
                //print(self.responsedata.count)
            }
        }
    }
}

extension ViewController:UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return responsedata.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        cell.configuredatafunction(with:responsedata[indexPath.row])
        cell.contactLbl.numberOfLines = 0
        cell.messageLbl.numberOfLines = 0
        cell.locationLbl.numberOfLines = 0
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //return CGFloat(view.frame.height/5)
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Number of cell Clicked",indexPath.row)
    }
    
    
}

