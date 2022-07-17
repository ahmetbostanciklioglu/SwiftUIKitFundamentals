//
//  ViewController.swift
//  UIGestureRecognizerLecture
//
//  Created by Ahmet Bostancıklıoğlu on 4.07.2022.
//

import UIKit

class ViewController: UIViewController {

    let firstView = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
    let secondView = UIView(frame: CGRect(x: 100, y: 250, width: 100, height: 100))
    let thirdView = UIView(frame: CGRect(x: 100, y: 400, width: 100, height: 100))
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.tap(_:))))
        firstView.isUserInteractionEnabled = true
        secondView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.tap(_:))))
        secondView.isUserInteractionEnabled = true
        thirdView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.tap(_:))))
        thirdView.isUserInteractionEnabled = true
        
        
        firstView.backgroundColor = .orange
        secondView.backgroundColor = .lightGray
        thirdView.backgroundColor = .green
        
        firstView.tag = 1
        secondView.tag = 2
        thirdView.tag = 3
        view.addSubview(firstView)
        view.addSubview(secondView)
        view.addSubview(thirdView)
    }
   

    @objc func tap(_ gestureRecognizer: UITapGestureRecognizer) {
            let tag = gestureRecognizer.view?.tag
            switch tag! {
            case 1 :
                print("select first view")
            case 2 :
                print("select second view")
            case 3 :
                print("select third view")
            default:
                print("default")
            }
        }

}

