//
//  HomeTableViewCell.swift
//  FastList
//
//  Created by Abhishek Thapliyal on 02/10/18.
//  Copyright © 2018 Abhishek Thapliyal. All rights reserved.
//

import UIKit

class HomeTableViewCell: TableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
 
    override func configure(_ item: Any?) {
        guard let model = item as? HomeCellModel else { return }
        self.titleLabel.text = model.type.title
    }
}
