//
//  ViewController.swift
//  UIAlertControllerLecture
//
//  Created by Ahmet Bostancıklıoğlu on 3.07.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

  @IBAction  func showSimpleAlert() {
        let alert = UIAlertController(title: "Sign out?", message: "You can always access your content by signing back in", preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.default, handler: { _ in
              print("cancel")
            }))
            alert.addAction(UIAlertAction(title: "Sign out", style: UIAlertAction.Style.default, handler: {(_: UIAlertAction!) in
                print("sign out")
            }))
            self.present(alert, animated: true, completion: nil)
        }
    
    @IBAction func showSimpleActionSheet() {
        let alert = UIAlertController(title: "Title", message: "Please Select an Option", preferredStyle: .actionSheet)
    
        alert.addAction(UIAlertAction(title: "Approve", style: .default, handler: { (_) in
            print("User click Approve button")
        }))
        alert.addAction(UIAlertAction(title: "Edit", style: .default, handler: { (_) in
            print("User click Edit button")
        }))
        alert.addAction(UIAlertAction(title: "Delete", style: .destructive, handler: { (_) in
            print("User click Dismiss button")
        }))
    
        self.present(alert, animated: true) {
            print("completion block")
        }
        
    }
    
    @IBAction func showAlertWithDistructiveButton() {
        let alert = UIAlertController(title: "Sign out?", message: "You can always access your content by signing back in", preferredStyle: .alert)
       
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.default, handler: { _ in
            print("cancel")
        }))
        alert.addAction(UIAlertAction(title: "Sign out", style: .destructive, handler: { (_: UIAlertAction!) in
            print("sign out")
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func showAlertWithThreeButton() {
        
        let alert = UIAlertController(title: "Alert", message: "Alert with more than 2 buttons", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Default", style: .default, handler: { (_) in
            print("You've pressed default")
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: { (_) in
            print("You've pressed cancel")
        }))
        
        alert.addAction(UIAlertAction(title: "Destructive", style: .destructive, handler: { (_) in
            print("You've pressed the destructive")
        }))
        
        self.present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func showAlertWithTextField() {
        let alertController = UIAlertController(title: "Add new tag", message: nil, preferredStyle: .alert)
   
        let confirmAction = UIAlertAction(title: "Add", style: .default) { (_) in
            if let txtField = alertController.textFields?.first, let textField = txtField.text {
                print(textField)
            }
        }
    
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (_) in }
        
        alertController.addTextField { (textField) in
            textField.placeholder = "Tag"
        }
        
        alertController.addAction(confirmAction)
        alertController.addAction(cancelAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
}

