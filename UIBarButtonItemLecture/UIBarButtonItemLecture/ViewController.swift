//
//  ViewController.swift
//  UIBarButtonItemLecture
//
//  Created by Ahmet Bostancıklıoğlu on 4.07.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let btn1 = UIButton(type: .custom)
        btn1.setImage(UIImage(named: "imageExp"), for: .normal)
        btn1.frame = CGRect(x: 110, y: 300, width: 100, height: 100)
        btn1.addTarget(self, action: #selector(logoutUser), for: .touchUpInside)
        let item1 = UIBarButtonItem(customView: btn1)

        view.addSubview(btn1)
        
        let btn2 = UIButton(type: .custom)
        btn2.setImage(UIImage(named: "imageExp"), for: .normal)
        btn2.frame = CGRect(x: 230, y: 300, width: 100, height: 100)
        btn2.addTarget(self, action: #selector(logoutUser), for: .touchUpInside)
        let item2 = UIBarButtonItem(customView: btn2)

        self.navigationItem.setRightBarButtonItems([item1,item2], animated: true)
        
        view.addSubview(btn2)
    }

    @objc func logoutUser(_ sender: Any) {
        print("clicked")
    }

}

