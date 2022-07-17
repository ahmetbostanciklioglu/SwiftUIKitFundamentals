//
//  ViewController.swift
//  UIImageViewLecture
//
//  Created by Ahmet Bostancıklıoğlu on 2.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var photoView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        photoView.layer.masksToBounds = true
        photoView.layer.cornerRadius = 10.0
        
    }

    @IBAction func buttonTapped(_ sender: Any) {
        
        photoView.alpha = 0.5
    }
    
}

