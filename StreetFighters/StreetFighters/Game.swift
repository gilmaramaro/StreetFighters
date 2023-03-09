//
//  Game.swift
//  StreetFighters
//
//  Created by Gilmar Amaro on 09/03/23.
//

import UIKit

class Game: NSObject {
    var name: String 
    var country: String
    var fightStyle: String
    var nameDescription: String
    var imageCharacter: String
    
    init(name: String, country: String, fightStyle: String, nameDescription: String, imageCharacter: String) {
        self.name = name
        self.country = country
        self.fightStyle = fightStyle
        self.nameDescription = nameDescription
        self.imageCharacter = imageCharacter
    }
}
