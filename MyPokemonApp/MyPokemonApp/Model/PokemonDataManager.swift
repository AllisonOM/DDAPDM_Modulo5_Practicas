//
//  PokemonDataManager.swift
//  MyPokemonApp
//
//  Created by Allison on 07/03/25.
//

import Foundation

class PokemonDataManager {
    
    private var pokemons: [Pokemon] = []
    
    //data source array :P
    let pokemonsArray = [
        ["image": "0", "name": "Wartortle", "move": "Pistola Agua", "abilities": ["Torrente", "Cura Lluvia"]],
        ["image": "1", "name": "Bulbasaur", "move": "Látigo Cepa", "abilities": ["Espesura", "Clorofila"]],
        ["image": "2", "name": "Blastoise", "move": "Hidrobomba", "abilities": ["Torrente", "Cura Lluvia"]],
        ["image": "3", "name": "Butterfree", "move": "Tornado", "abilities": ["Ojo Compuesto", "Cromolente"]],
        ["image": "4", "name": "Ivysaur", "move": "Hoja Afilada", "abilities": ["Espesura", "Clorofila"]],
        ["image": "5", "name": "Jigglypuf", "move": "Canto", "abilities": ["Gran Encanto", "Competitivo"]],
        ["image": "6", "name": "Charmander", "move": "Lanzallamas", "abilities": ["Mar Llamas", "Poder Solar"]],
        ["image": "7", "name": "Meowth", "move": "Día de Pago", "abilities": ["Recogida", "Técnico", "Nerviosismo"]],
        ["image": "8", "name": "Alakazam", "move": "Psíquico", "abilities": ["Sincronía", "Foco Interno", "Muro Mágico"]],
        ["image": "9", "name": "Pidgey", "move": "Tornado", "abilities": ["Vista Lince", "Tumbos", "Sacapecho"]],
        ["image": "10", "name": "Raichu", "move": "Rayo", "abilities": ["Electricidad Estática", "Surfista de Cola"]],
        ["image": "11", "name": "Rattata", "move": "Hipercolmillo", "abilities": ["Fuga", "Agallas", "Entusiasmo"]],
        ["image": "12", "name": "Vaporeon", "move": "Pistola Agua", "abilities": ["Absorbe Agua", "Hidratación"]],
        ["image": "13", "name": "Jynx", "move": "Puño Hielo", "abilities": ["Despiste", "Alerta", "Piel Seca"]],
        ["image": "14", "name": "Venusaur", "move": "Rayo Solar", "abilities": ["Espesura", "Clorofila"]],
        ["image": "15", "name": "Linea", "move": "Placaje", "abilities": ["???"]],
        ["image": "16", "name": "Slowbro", "move": "Psíquico", "abilities": ["Despiste", "Ritmo Propio", "Regeneración"]],
        ["image": "17", "name": "Dewgong", "move": "Rayo Hielo", "abilities": ["Sebo", "Hidratación", "Cuerpo Helado"]],
        ["image": "18", "name": "Spearow", "move": "Picotazo", "abilities": ["Vista Lince", "Francotirador"]],
        ["image": "19", "name": "Wigglytuff", "move": "Vozarrón", "abilities": ["Gran Encanto", "Competitivo", "Cacheo"]],
        ["image": "20", "name": "Scyther", "move": "Tijera X", "abilities": ["Enjambre", "Técnico", "Impasible"]],
        ["image": "21", "name": "Golduck", "move": "Surf", "abilities": ["Humedad", "Aclimatación", "Nado Rápido"]],
        ["image": "22", "name": "Lapras", "move": "Rayo Hielo", "abilities": ["Absorbe Agua", "Caparazón", "Hidratación"]],
        ["image": "23", "name": "Sandshrew", "move": "Cuchillada", "abilities": ["Velo Arena", "Ímpetu Arena"]]
    ]
    
    func fetch() {
        for pokemon in pokemonsArray {
            pokemons.append(Pokemon(dict: pokemon))
        }
    }
    
    func getPokemons() -> [Pokemon] {
        return pokemons
    }
    
    func getPokemon(at index: Int) -> Pokemon? {
        guard index >= 0 && index < pokemons.count else {
            return nil
        }
        return pokemons[index]
    }
    
    func count() -> Int {
        return pokemons.count
    }
    
}
