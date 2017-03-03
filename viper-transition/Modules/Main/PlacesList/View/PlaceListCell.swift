//
//  PlaceListCell.swift
//  LunchDot
//
//  Created by SVYAT on 28.02.17.
//  Copyright © 2017 LunchDot. All rights reserved.
//

import UIKit

class PlaceListCell: UITableViewCell {
    
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var place: UIImageView!
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var address: UILabel!
    @IBOutlet weak var distance: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
