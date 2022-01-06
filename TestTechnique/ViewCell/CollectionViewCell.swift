//
//  CollectionViewCell.swift
//  TestTechnique
//
//  Created by Ahmed on 05/01/2022.
//

import Foundation

import UIKit

class CollectionViewCell: UITableViewCell{
    
    
    @IBOutlet weak var mCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        mCollectionView.delegate = self
        mCollectionView.dataSource = self
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
    extension CollectionViewCell : UICollectionViewDelegate,
                                    UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return 5
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "celll", for: indexPath) as! MenuCollectionViewCell

                return cell
            
        }
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout :UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

            return CGSize(width: 180 , height: 180)
        }
        
        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        }
        
    }




