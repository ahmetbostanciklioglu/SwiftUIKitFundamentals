//
//  ViewController.swift
//  UIColorProject
//
//  Created by Ahmet Bostancıklıoğlu on 2.08.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var background: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func sliderChanged(_ sender: UISlider) {
        
        let redValue    = CGFloat(redSlider.value)
        let greenValue  = CGFloat(greenSlider.value)
        let blueValue   = CGFloat(blueSlider.value)
        background.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1)
        
    }
}

