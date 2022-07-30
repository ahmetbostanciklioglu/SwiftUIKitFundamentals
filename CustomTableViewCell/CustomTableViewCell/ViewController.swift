//
//  ViewController.swift
//  CustomTableViewCell
//
//  Created by Ahmet Bostancıklıoğlu on 30.07.2022.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arkadasIsimleri.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "arkadas") as! ArkadasTableViewCell
        
        cell.arkadasIsmi?.text = arkadasIsimleri[indexPath.row]
        cell.arkadasYasi?.text = arkadasYaslari[indexPath.row]
        cell.arkadasResmi.image = arkadasResimleri[indexPath.row]
        return cell
    }
    
    var arkadasResimleri = [UIImage(named: "kisi1"), UIImage(named: "kisi2"), UIImage(named: "kisi3")]
    var arkadasIsimleri = ["Ömer", "Mutlu", "Deniz"]
    var arkadasYaslari  = ["36"  , "32"   , "40"   ]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

