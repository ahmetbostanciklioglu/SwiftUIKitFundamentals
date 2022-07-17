//
//  ViewController.swift
//  CustomTableView
//
//  Created by Ahmet Bostancıklıoğlu on 2.07.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
//    let data = ["One", "Two", "Three", "Four", "Five"]
    
    @IBOutlet weak var tableview : UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
      
        self.tableview.dataSource = self
        self.tableview.delegate = self
        
        self.registerTableViewCells()
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell") as? CustomTableViewCell {
            return cell
        }
        return UITableViewCell()
    }
    
    private func registerTableViewCells() {
        
        let textFieldCell = UINib(nibName: "CustomTableViewCell", bundle: nil)
        
        self.tableview.register(textFieldCell, forCellReuseIdentifier: "CustomTableViewCell")

    }
    
    
    
    
}

