//
//  CustomTableViewCell.swift
//  CustomTableView
//
//  Created by Ahmet Bostancıklıoğlu on 2.07.2022.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var textfield: UITextField!
    
    @IBAction func buttonAction(_ sender: Any) {
        
        if let textfield = self.textfield.text {
            print(textfield)
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

   
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
