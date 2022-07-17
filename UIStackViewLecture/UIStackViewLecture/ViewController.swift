//
//  ViewController.swift
//  UIStackViewLecture
//
//  Created by Ahmet Bostancıklıoğlu on 4.07.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Image View
        let imageView = UIImageView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        imageView.backgroundColor = UIColor.blue
        imageView.heightAnchor.constraint(equalToConstant: 120.0).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 120.0).isActive = true
        imageView.image = UIImage(named: "image")
        
        //Text Label
        let textLabel = UILabel(frame: CGRect(x: 100, y: 400, width: 50, height: 100))
        textLabel.backgroundColor = UIColor.yellow
        textLabel.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
        textLabel.widthAnchor.constraint(equalToConstant: self.view.frame.width/2).isActive = true
        textLabel.text = "Hey, World!"
        textLabel.textAlignment = .center
        
        //Stack View
        let stackView = UIStackView()
        stackView.axis = NSLayoutConstraint.Axis.vertical // Yatay stackView
        stackView.distribution = UIStackView.Distribution.equalSpacing
        stackView.alignment = UIStackView.Alignment.center
        stackView.spacing = 16.0
        
        stackView.addArrangedSubview(textLabel)
        stackView.addArrangedSubview(imageView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(stackView)
        
        
        //Constraints
        stackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        
    }

}

