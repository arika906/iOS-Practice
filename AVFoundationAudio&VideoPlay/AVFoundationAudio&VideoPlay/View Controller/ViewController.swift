//
//  ViewController.swift
//  AVFoundationAudio&VideoPlay
//
//  Created by Arika Afrin Boshra on 16/2/20.
//  Copyright © 2020 com.arika.boshra@gmail. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let imageNameArray = ["1.png", "2.png", "3.png", "4.png", "5.png"]
    let imageArray : [UIImage] = [#imageLiteral(resourceName: "1"), #imageLiteral(resourceName: "2"), #imageLiteral(resourceName: "3"), #imageLiteral(resourceName: "4"), #imageLiteral(resourceName: "5")]
    let musicArray = ["1.creativeminds", "2.memories", "3.summer", "4.anewbeginning", "5.littleidea"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        imageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell :CollectionViewCell = self.collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        
        cell.CollectionImage.image = imageArray[indexPath.row]
        cell.CollectionImage.layer.cornerRadius = 60
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(identifier: "secondViewController") as? secondViewController
        vc?.name = imageNameArray[indexPath.row]
        vc?.musicPlaying = musicArray[indexPath.row]
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
}

