//
//  CustomCountryTableViewCell.swift
//  fancytableView
//
//  Created by Fayik Muzammil on 7/19/20.
//  Copyright © 2020 Fayik Muzammil. All rights reserved.
//

import UIKit

class CustomCityTableViewCell: UITableViewCell {

    @IBOutlet weak var cityNameLbl: UILabel!
    @IBOutlet weak var cityCodeLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
