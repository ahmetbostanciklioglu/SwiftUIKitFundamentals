//
//  ViewController.swift
//  UILABEL
//
//  Created by Ahmet Bostancıklıoğlu on 28.05.2022.
//

import UIKit

class ViewController: UIViewController {

    //    Creating  UIlabel with Interface Builder
    @IBOutlet weak var testLabel: UILabel! // we add constraints from storyboard for testLabel
  
//    Creating programmatically secondLabel with UIlabel
    let secondLabel:UILabel =  UILabel()
    
//  Creating programmatically thirdLabel with UIlabel
     var thirdLabel : UILabel = {
       let programaticLabel = UILabel()
            programaticLabel.translatesAutoresizingMaskIntoConstraints = false // close auto resizing mask for label
            programaticLabel.text = "Lazy label is created as a programatic."
            programaticLabel.font = UIFont.systemFont(ofSize: 22, weight: .medium)
//        programaticLabel.lineBreakMode = .byTruncatingTail // make shorter from tail of text
            programaticLabel.numberOfLines = 0
            programaticLabel.textAlignment = .center
            programaticLabel.textColor = .systemRed
          
//        Constraints of programatic label
        programaticLabel.widthAnchor.constraint(equalToConstant: 300).isActive = true
        programaticLabel.heightAnchor.constraint(equalToConstant: 150).isActive = true
      
        
            return programaticLabel
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
       
        
        self.view.addSubview(thirdLabel)
        
        
//        Adding frame to secondlabel
        secondLabel.frame = CGRect(x: 100, y: 100, width: 200, height: 50)
//        x       : means leading or left anchor to label
//        y      : means top anchor to label
//        widht  : means width anchor to label
//        height : means height anchor to label
        
        secondLabel.text = "SecondLabel" //enable to write text inside secondLabel
        secondLabel.textColor = UIColor.orange //enable to change text color of secondLabel
        secondLabel.textAlignment = .center //enable to text alignment to do center inside secondLabel
        secondLabel.numberOfLines = 0 //enable to form number of lines  0 or many lines secondLabel
        secondLabel.font = UIFont(name: "Kailasa-Bold", size: 24) //enable to change text font type with name size of secondLabel
        secondLabel.backgroundColor = .systemBlue //enable to change background color of  secondLabel
        
        secondLabel.layer.cornerRadius = 10 //enable to corner rounded inside secondLabel
        self.secondLabel.clipsToBounds = true //enable to clips to bounds of secondLabel
        
        secondLabel.translatesAutoresizingMaskIntoConstraints = true
        
//        Adding secondlabel to view as a subview
        self.view.addSubview(secondLabel)
        
        
        
        
    }


}

