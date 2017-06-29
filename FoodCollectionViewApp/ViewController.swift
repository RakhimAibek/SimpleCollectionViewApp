//
//  ViewController.swift
//  FoodCollectionViewApp
//
//  Created by Aibek Rakhim on 6/28/17.
//  Copyright © 2017 ibek inc. All rights reserved.


import UIKit

class ViewController: UICollectionViewController {
    
    @IBOutlet weak var layout: UICollectionViewFlowLayout!
    
    var types = ProductType.types
    var products = Product.load()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.layout.minimumLineSpacing = 1
        self.layout.minimumInteritemSpacing = 1
        let size = (self.view.frame.width - 2) / 3
        self.layout.itemSize = CGSize(width: size, height: size)
    }
    
    //MARK: - UICollectionViewDataSource
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("\(#function)")
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return types.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products[section].count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCollectioCell", for: indexPath) as! ImageCollectionViewCell
        let product = products[indexPath.section][indexPath.item]
        cell.imageCollectionViewCell.image = UIImage(named: product.image)
        cell.imageCollectionViewCell.contentMode = .scaleAspectFit
        return cell
    }
    
    //MARK: - UICollectionViewDelegate
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        if kind == UICollectionElementKindSectionHeader {
            let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "headerReusableIdentifier", for: indexPath) as! HeaderCollectionReusableView
            let str = types[indexPath.section].rawValue
            headerView.titleLabel.text = str
            return headerView
            
        } else if kind == UICollectionElementKindSectionFooter {
            let footerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "footerReusableView", for: indexPath) as! FooterCollectionReusableView
            return footerView
        }
        return UICollectionReusableView()
    }
}


