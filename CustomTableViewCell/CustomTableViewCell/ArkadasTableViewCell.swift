//
//  ArkadasTableViewCell.swift
//  CustomTableViewCell
//
//  Created by Ahmet Bostancıklıoğlu on 30.07.2022.
//

import UIKit

class ArkadasTableViewCell: UITableViewCell {

    @IBOutlet weak var arkadasResmi: UIImageView!
    @IBOutlet weak var arkadasIsmi: UILabel!
    @IBOutlet weak var arkadasYasi: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
