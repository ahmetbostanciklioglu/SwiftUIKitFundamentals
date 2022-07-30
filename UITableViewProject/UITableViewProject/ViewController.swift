//
//  ViewController.swift
//  UITableViewProject
//
//  Created by Ahmet Bostancıklıoğlu on 30.07.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arkadasIsimleri.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "arkadas")!
        cell.textLabel?.text = arkadasIsimleri[indexPath.row]
        cell.detailTextLabel?.text = arkadasYaslari[indexPath.row]
        return cell
    }
    
    var arkadasIsimleri = ["Ömer", "Deniz", "Mutlu", "Murat", "Burak", "Bahri"]
    var arkadasYaslari  = ["42"  , "32"   , "62"   , "72"   , "29"   , "52"]

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        
        
    }


}

