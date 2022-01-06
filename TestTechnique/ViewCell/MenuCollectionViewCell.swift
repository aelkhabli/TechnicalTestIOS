//
//  MenuCollectionViewCell.swift
//  TestTechnique
//
//  Created by Ahmed on 06/01/2022.
//

import Foundation
import UIKit

class MenuCollectionViewCell: UICollectionViewCell {


    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    func setup(with subject: Subject) {
             imageView.image = subject.image
             label.text = subject.title
        }
}
