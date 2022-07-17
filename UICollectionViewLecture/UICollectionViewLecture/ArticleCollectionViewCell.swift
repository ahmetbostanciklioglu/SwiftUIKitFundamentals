//
//  ArticleCollectionViewCell.swift
//  UICollectionViewLecture
//
//  Created by Ahmet Bostancıklıoğlu on 6.07.2022.
//

import UIKit

@IBDesignable class ArticleCollectionViewCell: UICollectionViewCell {

    
    @IBOutlet weak var photoView: UIImageView!
    
    @IBOutlet weak var altBaslik: UILabel!
    
    @IBOutlet weak var baslik: UILabel!
    
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    

}
