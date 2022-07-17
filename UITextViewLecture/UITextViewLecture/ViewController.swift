//
//  ViewController.swift
//  UITextViewLecture
//
//  Created by Ahmet Bostancıklıoğlu on 3.07.2022.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textView.delegate = self
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        self.view.endEditing(true)
        self.textView.resignFirstResponder()
    }

    func textViewDidBeginEditing(_ textView: UITextView) {
        textView.backgroundColor = UIColor.lightGray
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        textView.backgroundColor = UIColor.white
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        label.text = "\(textView.text.count)"
        return textView.text.count + (text.count - range.length) <= 500
    }
}

