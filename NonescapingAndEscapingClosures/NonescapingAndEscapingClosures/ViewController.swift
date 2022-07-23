//
//  ViewController.swift
//  NonescapingAndEscapingClosures
//
//  Created by Ahmet Bostancıklıoğlu on 23.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberLabel: UILabel!
    
    @IBOutlet weak var indicatorView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        
        NetworkManager.shared.start(number: 10) { totalNumber in
            self.numberLabel.text = String(totalNumber)
        }
        
        indicatorView.backgroundColor = .black
    }
    
}

