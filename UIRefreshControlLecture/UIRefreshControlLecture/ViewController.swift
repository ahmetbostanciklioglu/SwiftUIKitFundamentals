//
//  ViewController.swift
//  UIRefreshControlLecture
//
//  Created by Ahmet Bostancıklıoğlu on 2.07.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var myTableView: UITableView!
    
    var myArray = ["apple", "windows", "amazon"]
    
    lazy var refreshControl: UIRefreshControl = {
        let refreshControl = UIRefreshControl()
       
        return refreshControl
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        myTableView.refreshControl = refreshControl
        let myString = "Pull to refresh"
        let myAttribute = [NSAttributedString.Key.foregroundColor: UIColor.white,
                           NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 26)]
                           
        let myAttrString = NSAttributedString(string: myString, attributes: myAttribute)
      
        refreshControl.attributedTitle = myAttrString
        refreshControl.tintColor = UIColor.white
        refreshControl.backgroundColor = UIColor.black
        
    }
        
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = myArray[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myArray.count
    }
    
    @objc func handleRefresh() {
        let newElements = ["google", "facebook", "flipkart"]
        myArray.append(contentsOf: newElements)
        myArray.append(String(myArray.count))
        myTableView.reloadData()
        refreshControl.endRefreshing()
    }
    
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        print(velocity)
        
        if velocity.y < -0.1 {
            handleRefresh()
        }
    }
}

