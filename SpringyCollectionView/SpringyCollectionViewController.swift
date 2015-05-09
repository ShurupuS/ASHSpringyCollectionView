//
//  ViewController.swift
//  SpringyCollectionView
//
//  License
//  Created by Ronald Sunarno on 5/8/15.
//  Released under an MIT license: http://opensource.org/licenses/MIT
//
//  Ported from Ash Furrow. Originally written on 2013-08-12.


import UIKit
import Foundation

class SpringyCollectionViewController: UICollectionViewController {
    let cellIdentifier:String = "Cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionView?.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: cellIdentifier)
        self.collectionView?.backgroundColor = UIColor(white: 0, alpha: 0)
    }
    
    // UICollectionViewDataSource Methods
    override func collectionView(collectionView: UICollectionView,
        numberOfItemsInSection section: Int) -> Int {
            
            return 100
    }
    
    override func collectionView(collectionView: UICollectionView,
        cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
            
            var cell:UICollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier(cellIdentifier, forIndexPath: indexPath) as! UICollectionViewCell
            
            cell.backgroundColor = UIColor.purpleColor()
            
            return cell
            
    }
}