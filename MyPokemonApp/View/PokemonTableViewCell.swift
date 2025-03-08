//
//  PokemonTableViewCell.swift
//  MyPokemonApp
//
//  Created by Allison on 07/03/25.
//

import UIKit

class PokemonTableViewCell: UITableViewCell {
    
    @IBOutlet weak var pokemonImage: UIImageView!
    
    @IBOutlet weak var pokemonLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
