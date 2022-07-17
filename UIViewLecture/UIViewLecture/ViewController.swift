//
//  ViewController.swift
//  UIViewLecture
//
//  Created by Ahmet Bostancıklıoğlu on 3.07.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let frame1 = CGRect(x: 100, y: 100, width: 200, height: 200)
        let myView1 = UIView(frame: frame1)
        myView1.layer.shadowColor = UIColor.black.cgColor
        myView1.layer.borderColor = UIColor.black.cgColor
        myView1.layer.borderWidth = 2
        myView1.layer.cornerRadius = 5
        myView1.layer.shadowRadius = 2
        
        
        let frame2 = CGRect(x: 100, y: 400, width: 200, height: 200)
        let myView2 = UIView(frame: frame2)
        myView2.layer.shadowColor = UIColor.blue.cgColor
        myView2.layer.borderColor = UIColor.blue.cgColor
        myView2.layer.borderWidth = 2
        myView2.layer.cornerRadius = 5
        myView2.layer.shadowRadius = 2
        
        
        myView2.backgroundColor = .green
        myView1.backgroundColor = .red
        view.addSubview(myView1)
        view.addSubview(myView2)
        
    }


}

