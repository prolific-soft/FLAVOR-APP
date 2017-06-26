//
//  TestTableViewCellPrototype.swift
//  FLAVOR
//
//  Created by Chidi Emeh on 6/25/17.
//  Copyright © 2017 Chidi Emeh. All rights reserved.
//

import UIKit

class TestTableViewCellPrototype: UITableViewCell {

    let collectionHeaderXib = "collectionHeaderXib"
    let collectionCell = "TestCollectionCell"
    
    
    
    @IBOutlet weak var featuredCollectionView: UICollectionView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
       featuredCollectionView.delegate = self
    featuredCollectionView.dataSource = self
        
        featuredCollectionView.register(UINib(nibName: "homeCollectionViewHeader", bundle: nil), forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: collectionHeaderXib)
 
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension TestTableViewCellPrototype: UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: collectionCell, for: indexPath)
        
        return cell
    }
    
    /*
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        switch kind {
        case UICollectionElementKindSectionHeader:
            
            let reusableview = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionElementKindSectionHeader, withReuseIdentifier: collectionHeaderXib, for: indexPath) as! HomeCollectionReusableViewHeader
            
            reusableview.frame = CGRect(x: self.featuredCollectionView.bounds.width, y: 0, width: 344, height: 30)
            
            
            reusableview.featureLabel.backgroundColor = UIColor.lightGray
            
            return reusableview
            
        default:
            fatalError("Unexpected element kind")
        }
        
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: 344, height: 25)
    }
    
    */
    
    
}

