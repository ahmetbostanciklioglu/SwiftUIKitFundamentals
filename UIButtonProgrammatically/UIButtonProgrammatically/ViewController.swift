//
//  ViewController.swift
//  UIButtonProgrammatically
//
//  Created by Ahmet Bostancıklıoğlu on 30.07.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let myFirstButton = UIButton()
        myFirstButton.setTitle("It is a button", for: .normal)
        myFirstButton.setTitleColor(.blue, for: .normal)
        myFirstButton.frame = CGRect(x: 15, y: -50, width: 300, height: 500)
        myFirstButton.addTarget(self, action: #selector(pressed), for: .touchUpInside)
        view.addSubview(myFirstButton)
    }

    @objc func pressed() {
        print("Hello")
    }
}

