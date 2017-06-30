//
//  Recipe.swift
//  FLAVOR
//
//  Created by Chidi Emeh on 6/20/17.
//  Copyright © 2017 Chidi Emeh. All rights reserved.
//

import Foundation
import UIKit


 //The struct holds the data and methods for
 //a recipe
struct Recipe {
    
    //Properrties
    var category: String!
    var name: String!
    var image: UIImage!
    var timeToMake: Int16!
    var difficulty: String!
    var serving: Int16!
    
    var ingredients: [String]!
    var instructions: [String]!
    
    var isFavorite = false
    
    //Initializer
    init(category: String, name: String, image: UIImage, time: Int16, difficulty: String, serving: Int16, ingredients : [String], instructions: [String]) {
        self.category = category
        self.name = name
        self.image = image
        self.timeToMake = time
        self.difficulty = difficulty
        self.serving = serving
        
        self.ingredients = ingredients
        self.instructions = instructions
    }
    
    
    mutating func setFavorite() {
        isFavorite = true
    }
    
}
