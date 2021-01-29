//
//  thecellTableViewCell.swift
//  zoo
//
//  Created by mohamed hossam on 1/28/21.
//  Copyright © 2021 mohamed hossam. All rights reserved.
//

import UIKit

class thecellTableViewCell: UITableViewCell {
    @IBOutlet weak var Iname: UILabel!
    @IBOutlet weak var Iamge: UIImageView!
    @IBOutlet weak var IDes: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
