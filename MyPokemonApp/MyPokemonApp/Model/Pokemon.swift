//
//  Pokemon.swift
//  MyPokemonApp
//
//  Created by Allison on 07/03/25.
//

import Foundation

struct Pokemon {
    let name: String
    let image: String
    let move: String
    let abilities: [String]
    
    init(dict: [String: Any]) {
        self.image = dict["image"] as? String ?? ""
        self.name = dict["name"] as? String ?? ""
        self.move = dict["move"] as? String ?? ""
        self.abilities = dict["abilities"] as? [String] ?? []
    }
}
