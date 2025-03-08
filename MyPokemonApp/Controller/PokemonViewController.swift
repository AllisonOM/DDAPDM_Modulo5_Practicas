//
//  PokemonViewController.swift
//  MyPokemonApp
//
//  Created by Allison on 07/03/25.
//

import UIKit

class PokemonViewController: UIViewController {

    var getPokemon: String?
    var selectedPokemon: Pokemon?
    let dataManager = PokemonDataManager()
    
    @IBOutlet weak var pokemonTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        pokemonTable.dataSource = self
        pokemonTable.delegate = self
        
        dataManager.fetch()
        print(dataManager.count())
    }
}

extension PokemonViewController : UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataManager.count()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "pokemonCell", for: indexPath) as! PokemonTableViewCell
        
        if let pokemon = dataManager.getPokemon(at: indexPath.row) {
            cell.pokemonImage.image = UIImage(named: pokemon.image)
            cell.pokemonLabel.text = pokemon.name
            return cell
        } else {
            cell.pokemonImage.image = UIImage(named: "defaulImage")
            cell.pokemonLabel.text = "Default text"
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Pokemones"
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return UIImageView(image: UIImage(named: "PokemonHeader"))
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let pokemon = dataManager.getPokemon(at: indexPath.row) {
//            print(pokemon.name)
            selectedPokemon = pokemon
            
            performSegue(withIdentifier: "sendPokemon", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendPokemon" {
            let objDestination = segue.destination as! DetailPokemonViewController
            
            if let selectedPokemon = selectedPokemon {
                objDestination.getNamePokemon = selectedPokemon.name
                objDestination.getImagePokemon = selectedPokemon.image
                objDestination.getMovePokemon = selectedPokemon.move
                objDestination.getAbilitiesPokemon = selectedPokemon.abilities.joined(separator: ", ")
            }
        }
    }
}
