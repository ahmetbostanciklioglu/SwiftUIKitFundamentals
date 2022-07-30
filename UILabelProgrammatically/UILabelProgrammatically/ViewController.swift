//
//  ViewController.swift
//  UILabelProgrammatically
//
//  Created by Ahmet Bostancıklıoğlu on 30.07.2022.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        label.center = CGPoint(x: 160, y: 285)
        label.textAlignment = .center
        label.text = "I am test label"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        
        self.view.addSubview(label)
    }


}

