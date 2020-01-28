//
//  TableViewCell.swift
//  collectionView_in_a_tableView
//
//  Created by Arika Afrin Boshra on 26/1/20.
//  Copyright © 2020 com.arika.boshra@gmail. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var categoryLbl: UILabel!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let collectionArray = ["Dice 1", "Dice 2", "Dice 3", "Dice 4", "Dice 5", "Dice 6"]
    
    let imgArray : [UIImage] = [#imageLiteral(resourceName: "dice1"),#imageLiteral(resourceName: "dice2"),#imageLiteral(resourceName: "dice3"),#imageLiteral(resourceName: "dice4"),#imageLiteral(resourceName: "dice5"),#imageLiteral(resourceName: "dice6")]
    
    override func awakeFromNib() {
        collectionView.delegate = self
        collectionView.dataSource = self
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension TableViewCell : UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return collectionArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collectionCell: CollectionViewCell = self.collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! CollectionViewCell
        
        collectionCell.collectionLbl.text = collectionArray[indexPath.row]
        collectionCell.collectionImg.image = imgArray[indexPath.row]
        
        return collectionCell
    }
    
    func collectionCell(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 146, height: 186)
    }
    

}

