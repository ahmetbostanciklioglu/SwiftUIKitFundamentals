//
//  ViewController.swift
//  UITextFieldLecture
//
//  Created by Ahmet Bostancıklıoğlu on 4.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var isimLabel: UILabel!
    @IBOutlet weak var isimTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
    }

    @IBAction func yazdirButton(_ sender: Any) {
        isimLabel.text = "İsim: \(isimTextField.text!)"
        
    }
    
}

