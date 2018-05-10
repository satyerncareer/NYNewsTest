//
//  newsCell.swift
//  NYTIMES_TEST
//
//  Created by Satyen on 10/05/18.
//  Copyright © 2018 NYTIMES_TEST. All rights reserved.
//

import UIKit

class newsCell: UITableViewCell {

    @IBOutlet weak var type: UILabel!
    @IBOutlet weak var pub_date: UILabel!
    @IBOutlet weak var author: UILabel!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var newsImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
