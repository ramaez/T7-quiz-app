//
//  CharacterCell.swift
//  T7 Quiz App
//
//  Created by Ruben Amaez on 1/30/19.
//  Copyright © 2019 ramaez. All rights reserved.
//

import UIKit

class CharacterCell: UICollectionViewCell {

    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    public func configure(with string: String) {
        label.text = string
        
    }

}
