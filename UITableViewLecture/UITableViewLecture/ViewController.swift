//
//  ViewController.swift
//  UITableViewLecture
//
//  Created by Ahmet Bostancıklıoğlu on 2.07.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var arkadasIsimleri = ["Ali", "Ömer", "Ayşe", "Mehmet", "Rihanna", "Ahmet", "Huriye", "Mustafa"]
    var arkadasYaslari = ["19", "18" , "20", "25", "30", "35","40" ]
    
    
    
    @IBOutlet weak var arkadasTableView: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arkadasIsimleri.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "arkadas")!
        
        cell.textLabel?.text = arkadasIsimleri[indexPath.row]
        cell.detailTextLabel?.text = arkadasYaslari[indexPath.row]
        
        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
      
        
    }


}

