//
//  DetailPokemonViewController.swift
//  MyPokemonApp
//
//  Created by Allison on 07/03/25.
//

import UIKit

class DetailPokemonViewController: UIViewController {

    @IBOutlet weak var nameGPokemon: UILabel!
    @IBOutlet weak var imageGPokemon: UIImageView!
    @IBOutlet weak var moveGPokemon: UILabel!
    @IBOutlet weak var abilitiesGPokemon: UILabel!
    @IBAction func btnClose(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    var getNamePokemon: String?
    var getImagePokemon: String?
    var getMovePokemon: String?
    var getAbilitiesPokemon: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        nameGPokemon.text = getNamePokemon ?? "No name"
        imageGPokemon.image = UIImage(named: getImagePokemon ?? "")
        moveGPokemon.text = getMovePokemon ?? "No move"
        abilitiesGPokemon.text = getAbilitiesPokemon ?? "No abilities"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
