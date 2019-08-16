//
//  MetodosTableViewCell.swift
//  Apoia
//
//  Created by student on 15/08/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class MetodosTableViewCell: UITableViewCell {

   
    @IBOutlet weak var nomeMetodoLabel: UILabel!
    
    @IBOutlet weak var TextoDescricaoText: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
