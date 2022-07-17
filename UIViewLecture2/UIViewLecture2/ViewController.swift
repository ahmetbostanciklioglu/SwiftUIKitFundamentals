//
//  ViewController.swift
//  UIViewLecture2
//
//  Created by Ahmet Bostancıklıoğlu on 3.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var bodyView: UIView!
    @IBOutlet weak var FooterView: UIView!
    
    @IBOutlet weak var headerLbl: UILabel!
    @IBOutlet weak var bodyLbl: UILabel!
    @IBOutlet weak var footerLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let headerTapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(headerLblTapped))
        headerLbl.isUserInteractionEnabled = true
        headerLbl.addGestureRecognizer(headerTapGestureRecognizer)
    
        let bodyTapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(bodyLblTapped))
        bodyLbl.isUserInteractionEnabled = true
        bodyLbl.addGestureRecognizer(bodyTapGestureRecognizer)
        
        
        let footerTapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(footerLblTapped))
        footerLbl.isUserInteractionEnabled = true
        footerLbl.addGestureRecognizer(footerTapGestureRecognizer)
    
    }

    
    
    @objc func headerLblTapped() {
        headerView.backgroundColor = .orange
    }
    
    @objc func bodyLblTapped() {
        bodyView.backgroundColor = .green
    }

    @objc func footerLblTapped() {
        FooterView.backgroundColor = .orange
    }
    
    
}

