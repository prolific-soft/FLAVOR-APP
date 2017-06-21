//
//  RecipeList.swift
//  FLAVOR
//
//  Created by Chidi Emeh on 6/20/17.
//  Copyright © 2017 Chidi Emeh. All rights reserved.
//

import Foundation
import UIKit

//Holds a lot of Recipe and performs methods
//to create dummy recipe as well as manipulation
//of the recipe
struct RecipeList {
    
    //Main List to hold recipes
    var list: [Recipe]?
    
    //Creating 10 Recipe
    
    //Salad
    var salad = Recipe(category: "Salad", name: "Pasta Salad", image: UIImage(named: "salad.jpg")!, time: 10, difficulty: "Easy", serving: 2, ingredients:
        ["1 1/2 tablespoons fresh lemon juice",
         "1 1/2 tablespoons extra-virgin olive oil",
         "1/4 teaspoon freshly ground black pepper",
         "1/8 teaspoon kosher salt",
         "6 cups mixed greens",
         "1 cup halved cherry tomatoes",
         "1/2 cup thinly sliced radishes"],
        
        instructions: ["Combine lemon juice, olive oil, pepper, ",
                       "and salt in a large bowl, stirring with a whisk",
                       "Add mixed greens, cherry tomatoes, and radishes; toss to coat."])
    
    var soup = Recipe(category: "Soup", name: "Banga Soup", image: UIImage(named: "soup.jpg")!, time: 15, difficulty: "Easy", serving: 4, ingredients:
        [
         "1/4 teaspoon freshly ground black pepper",
         "1/8 teaspoon kosher salt",
         "6 cups mixed greens",
         "1 cup halved cherry tomatoes",
         "1/2 cup thinly sliced radishes"],
                       
                       instructions: ["Combine lemon juice, olive oil, pepper, ",
                                      "and salt in a large bowl, stirring with a whisk",
                                      "Add mixed greens, cherry tomatoes, and radishes; toss to coat."])
    
    
    
    var maindish = Recipe(category: "Main Dish", name: "Turkey Chicken", image: UIImage(named: "maindish.jpg")!, time: 45, difficulty: "Hard", serving: 8, ingredients:
        [
            "1/4 teaspoon freshly ground black pepper",
            "1/8 teaspoon kosher salt",
            "6 cups mixed greens",
            "1 cup halved cherry tomatoes",
            "1/2 cup thinly sliced radishes",
            "1/4 teaspoon freshly ground black pepper",
            "1/8 teaspoon kosher salt",
            "6 cups mixed greens",
            "1 cup halved cherry tomatoes",
            "1/2 cup thinly sliced radishes"],
                      
                      instructions: ["Combine lemon juice, olive oil, pepper, ",
                                     "and salt in a large bowl, stirring with a whisk",
                                     "Add mixed greens, cherry tomatoes, and radishes; toss to coat.",
                                     "Combine lemon juice, olive oil, pepper, ",
                                     "and salt in a large bowl, stirring with a whisk",
                                     "Add mixed greens, cherry tomatoes, and radishes; toss to coat.",
                                     "Combine lemon juice, olive oil, pepper, ",
                                     "and salt in a large bowl, stirring with a whisk",
                                     "Add mixed greens, cherry tomatoes, and radishes; toss to coat.",
                                     "Combine lemon juice, olive oil, pepper, ",
                                     "and salt in a large bowl, stirring with a whisk",
                                     "Add mixed greens, cherry tomatoes, and radishes; toss to coat."])
    
    
    var breakfast = Recipe(category: "Breakfast", name: "Pankake", image: UIImage(named: "breakfast.jpg")!, time: 15, difficulty: "Easy", serving: 2, ingredients:
        [
            "1/4 teaspoon freshly ground black pepper",
            "1/8 teaspoon kosher salt",
            "6 cups mixed greens",
            "1 cup halved cherry tomatoes",
            "1/2 cup thinly sliced radishes"],
                      
                      instructions: ["Combine lemon juice, olive oil, pepper, ",
                                     "and salt in a large bowl, stirring with a whisk",
                                     "Add mixed greens, cherry tomatoes, and radishes; toss to coat."])
    
    var beverage = Recipe(category: "Beverage", name: "Strawberry Smoothie", image: UIImage(named: "breakfast.jpg")!, time: 10, difficulty: "Easy", serving: 1, ingredients:
        [
            "1/4 teaspoon freshly ground black pepper",
            "1/8 teaspoon kosher salt",
            "6 cups mixed greens"],
                           
                           instructions: ["Combine lemon juice, olive oil, pepper, ",
                                          "and salt in a large bowl, stirring with a whisk",
                                          "Add mixed greens, cherry tomatoes, and radishes; toss to coat."])
    
    var apepetizer = Recipe(category: "Appetizer", name: "Pork Appetizer", image: UIImage(named: "appetizer.jpg")!, time: 10, difficulty: "Medium", serving: 1, ingredients:
        [
            "1/4 teaspoon freshly ground black pepper",
            "1/8 teaspoon kosher salt",
            "6 cups mixed greens"],
                          
                          instructions: ["Combine lemon juice, olive oil, pepper, ",
                                         "and salt in a large bowl, stirring with a whisk",
                                         "Add mixed greens, cherry tomatoes, and radishes; toss to coat."])
    
    var cake = Recipe(category: "Appetizer", name: "Choc Cake", image: UIImage(named: "cake.jpg")!, time: 10, difficulty: "Easy", serving: 1, ingredients:
        [
            "1/4 teaspoon freshly ground black pepper",
            "1/8 teaspoon kosher salt",
            "6 cups mixed greens"],
                            
                            instructions: ["Combine lemon juice, olive oil, pepper, ",
                                           "and salt in a large bowl, stirring with a whisk",
                                           "Add mixed greens, cherry tomatoes, and radishes; toss to coat."])
    
    var pasta = Recipe(category: "Pasta", name: "Pasta Chap", image: UIImage(named: "pasta-recipe.jpg")!, time: 10, difficulty: "Easy", serving: 1, ingredients:
        [
            "1/4 teaspoon freshly ground black pepper",
            "1/8 teaspoon kosher salt",
            "6 cups mixed greens"],
                      
                      instructions: ["Combine lemon juice, olive oil, pepper, ",
                                     "and salt in a large bowl, stirring with a whisk",
                                     "Add mixed greens, cherry tomatoes, and radishes; toss to coat."])
    
    //Returns a list of recipes
    mutating func loadRecipe() -> [Recipe]{
        
        var tempRecipe = [pasta, cake, apepetizer, beverage, breakfast, maindish, soup, salad,
                          beverage, breakfast, maindish, soup, pasta, cake, apepetizer, beverage, breakfast, maindish, breakfast, maindish, soup, pasta, cake, apepetizer, cake, apepetizer, beverage, breakfast, maindish, soup, salad,
                          beverage, breakfast, maindish, soup, pasta, cake, apepetizer, beverage, breakfast, maindish, breakfast, maindish, breakfast, maindish, soup, pasta, cake, apepetizer, cake, apepetizer, beverage, breakfast, maindish, soup, salad,
                          beverage, breakfast]
        for recipe in tempRecipe {
            list?.append(recipe)
        }
        
        return tempRecipe
    }
    
    
    //Returns a list of categories for recipe
    func populateCategories() -> [String] {
        
        var categories = [String]()
        
        for recipe in list! {
            categories.append(recipe.category)
        }
        
        return categories
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}// End Struct
