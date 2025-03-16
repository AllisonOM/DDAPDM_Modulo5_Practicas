//
//  MenuOptionCell.swift
//  GOW
//
//  Created by Rafael Gonzalez on 07/03/25.
//

import UIKit

class MenuOptionCell: UITableViewCell {

    
    @IBOutlet weak var menuImage: UIImageView!
    
    @IBOutlet weak var menuLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        menuLabel.setCustomFont(fontName: Constants.fontMenuTitle, size: Constants.fontSizeDefault, texStyle: .headline)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
