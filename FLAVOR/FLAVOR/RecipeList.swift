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
    func loadRecipe() -> [Recipe]{
        
        let tempList = [pasta, cake, apepetizer, beverage, breakfast, maindish, soup, salad,
                          beverage, breakfast, maindish, soup, pasta, cake, apepetizer, beverage, breakfast, maindish, breakfast, maindish, soup, pasta, cake, apepetizer, cake, apepetizer, beverage, breakfast, maindish, soup, salad,
                          beverage, breakfast, maindish, soup, pasta, cake, apepetizer, beverage, breakfast, maindish, breakfast, maindish, breakfast, maindish, soup, pasta, cake, apepetizer, cake, apepetizer, beverage, breakfast, maindish, soup, salad,
                          beverage, breakfast]
        
        return tempList
    }

    
    
    
    func loadGoodRecipe() -> [Recipe] {
        
        let pasta = Recipe(category: "Salad", name: "Pasta Salad", image: UIImage(named: "pasta-recipe.jpg")!, time: 30, difficulty: "Easy", serving: 6, ingredients:
            [
                "1 cup mayonnaise or 1 cup salad dressing",
                "1/4 cup lemon juice concentrate",
                "2 teaspoons chicken flavor instant bouillon",
                "1 (7 ounce) package rotini pasta, cooked and crumbled",
                "8 slices bacon, cooked and crumbled",
                "1 parge tomato, seeded and chopped",
                "1/4 cup green onion, sliced", "4 cups lettuce, thinly sliced"],
                           
                           instructions: ["Combine mayonnaise, lemon juice, sugar and bouillon for the dressing",
                                          "Combine rotini, bacon, tomato, and green onion",
                                          "Combine all ingredients with lettuce"])
        
        let garlicBread = Recipe(category: "Breakfast", name: "Garlic Bread", image: UIImage(named: "garlic_bread.jpg")!, time: 10, difficulty: "Easy", serving: 1, ingredients:
            [
                "Bread",
                "Ounce of Butter",
                "garlic powder",
                "dried parsley"],
                           
                           instructions: ["Preheat oven to 400 degrees",
                                          "Butter bread",
                                          "Sprinkle garlic powder evenly over the butter",
                                          "Sprinkle parsley on garlic butter",
                                          "Cook for 3-5 minutes, until bottoms are brown"])
        
        let OvenFriedChickenChimichangas = Recipe(category: "Appetizer", name: "Oven-Fried Chicken Chimichangas", image: UIImage(named: "pasta-recipe.jpg")!, time: 45, difficulty: "Medium", serving: 6, ingredients:
            [
                "2⁄3 cup picante sauce or 2⁄3 cup your favorite salsa",
                "1 teaspoon ground cumin",
                "1⁄2 teaspoon dried oregano leaves, crushed",
                "1 1⁄2 cups cooked chicken, chopped",
                "1 cup shredded cheddar cheese",
                "2 green onions, chopped with some tops (about 1/4 cup)",
                "6 (8 inch) flour tortillas",
                "2 tablespoons margarine, melted",
                "shredded cheddar cheese, for serving",
                "chopped green onion, for serving",
                "picante sauce, for serving"],
                                 
                                 instructions: ["Mix chicken, picante sauce or salsa, cumin, oregano, cheese and onions",
                                                "Place about 1/4 cup of the chicken mixture in the center of each tortilla",
                                                "Fold opposite sides over filling",
                                                "Roll up from bottom and place seam-side down on a baking sheet",
                                                "Brush with melted margarine",
                                                "Bake at 400°F for 25 minutes or until golden",
                                                "Garnish with additional cheese and green onion and serve salsa on the side"])
        
        
        
        let FilipinoKamatis = Recipe(category: "Breakfast", name: "Filipino Kamatis", image: UIImage(named: "FilipinoKamatis.jpg")!, time: 10, difficulty: "Easy", serving: 6, ingredients:
            [
                "2 large tomatoes, chopped",
                "1 tablespoon dried chopped onion",
                "1 teaspoon garlic powder",
                "1⁄2 teaspoon salt",
                "1⁄4 teaspoon pepper",
                "1⁄16 teaspoon Accent seasoning"],
                                 
                                 instructions: ["Mix all ingredients well.",
                                                "Marinate in refrigerator for a minimum of 2 hours before serving."])
        
        
        let BeefTartare = Recipe(category: "Breakfast", name: "Beef Tartare", image: UIImage(named: "beef_tartare.jpg")!, time: 30, difficulty: "Medium", serving: 4, ingredients:
            [
                "2 pounds/ 1kg beef tenderloin",
                "1 cup/ 250ml cubed parmigiano-reggiano cheese",
                "1⁄4 cup/ 60ml garlic-stuffed olives, halved",
                "3 tablespoons/ 45ml olive oil",
                "2 shallots, diced",
                "1 handful celery leaves",
                "1 handful fresh chives, finely chopped",
                "1 handful fresh parsley, chopped",
                "green chili sauce, such as Tabasco",
                "salt & freshly ground black pepper",
                "canola oil, for frying",
                "6 parsnips, peeled and julienned",
                "smoked salt",
                "fresh ground black pepper"],
                                 
                                 instructions: ["For the beef tartare:.",
                                                "Fill a large bowl with ice and place a smaller bowl over the ice",
                                                "Finely dice the beef and place it in the bowl over the ice. (This will help to keep the meat fresh.)",
                                                "In another large bowl, combine the cheese, olives, oil, mustard, shallots, celery leaves, chives and parsley",
                                                "Add the beef and stir gently to combine. Season with hot sauce, salt and pepper.",
                                                "For the crispy parsnips:.",
                                                "Heat the canola oil in a deep fryer to 350 degrees F (180 degrees C).",
                                                " Fry the parsnips until golden brown and crisp. Transfer to a baking sheet lined with paper towels to drain.",
                                                "Season with smoked salt and pepper",
                                                "To serve, divide the beef tartare among plates and garnish with the crispy parsnips",
                                                "Disclaimer:.",
                                                "Consumption of raw or undercooked eggs, shellfish and meat may increase the risk of foodborne illness."])
        
        
        let ClementineChocolateSauce = Recipe(category: "Beverage", name: "Clementine Chocolate Sauce", image: UIImage(named: "beef_tartare.jpg")!, time: 780, difficulty: "Hard", serving: 8, ingredients:
            [
                "12 clementines",
                "2 cups/ 500ml sugar",
                "1 lemon, juice and zest of",
                "1 cup/ 250ml milk",
                "1⁄2 cup/ 125ml butter",
                "1 tablespoon/ 15ml granulated sugar",
                "1 teaspoon/ 5ml salt",
                "5 large eggs",
                "1⁄4 cup/ 60ml roasted pistachios, crushed",
                "1⁄4 cup/ 60ml coarse brown sugar (turbinado)",
                "2 cups/ 500ml 35-percent cream",
                "1 cup/ 250ml sugar",
                "1 vanilla bean, halved lengthwise and seeds scraped",
                "8 egg yolks"],
                                     
                                     instructions: ["Put the clementines (with the skin on) in a pot and cover with water",
                                                    "Marinate in refrigerator for a minimum of 2 hours before serving",
                                                    "2 cups/ 500ml sugar",
                                                    "1 lemon, juice and zest of",
                                                    "1 cup/ 250ml milk",
                                                    "1⁄2 cup/ 125ml butter",
                                                    "1 tablespoon/ 15ml granulated sugar",
                                                    "1 teaspoon/ 5ml salt",
                                                    "5 large eggs",
                                                    "1⁄4 cup/ 60ml roasted pistachios, crushed",
                                                    "1⁄4 cup/ 60ml coarse brown sugar (turbinado)",
                                                    "2 cups/ 500ml 35-percent cream",
                                                    "1 cup/ 250ml sugar",
                                                    "1 vanilla bean, halved lengthwise and seeds scraped",
                                                    "8 egg yolks"])
        
        
        let ThreeBeanBakedBeans = Recipe(category: "Main Dish", name: "Three-Bean Baked Beans", image: UIImage(named: "three_baked_beans.jpg")!, time: 79, difficulty: "Medium", serving: 8, ingredients:
            [
                "1⁄4 lb bacon, diced",
                "1⁄2 lb bulk breakfast sausage",
                "1 large sweet onion, chopped",
                "1⁄2 cup brown sugar",
                "1⁄2 cup granulated sugar",
                "1⁄4 cup catsup",
                "1⁄4 cup barbecue sauce",
                "2 teaspoons yellow mustard",
                "2 teaspoons molasses",
                "1⁄2 teaspoon chili powder",
                "1⁄2 teaspoon black pepper",
                "1 (16 ounce) can butter beans, drained and rinsed",
                "1 (16 ounce) can kidney beans, drained and rinsed",
                "1 (31 ounce) can pork and beans, drained"],
                                     
                                     instructions: ["Brown bacon, sausage and onion together in a skillet. Drain",
                                                    "Transfer to a large bowl and add all other ingredients.",
                                                    "Bake at 350 degrees for 1 hour."])
        
        
        let SeafoodStewWithCroutons = Recipe(category: "Main Dish", name: "Seafood Stew With Garlic", image: UIImage(named: "seafoodStewWithGarlicCrouton.jpg")!, time: 109, difficulty: "Medium", serving: 9, ingredients:
            [
                "3 tablespoons/ 45ml olive oil",
                "1 carrot, chopped",
                "1 celery rib, chopped",
                "1 fennel bulb, chopped",
                "1 garlic, bulb halved horizontally",
                "1 leek, chopped",
                "1 tablespoon/ 15ml cold butter",
                "2 tablespoons/ 30ml olive oil",
                "12 shiitake mushrooms, stemmed",
                "3 garlic cloves, chopped",
                "pound/ 500g clam",
                "1 (16 ounce) can butter beans, drained and rinsed",
                "8 ounces/ 225g rock shrimp",
                "meat from 2 lobster",
                "meat from 4 crab legs",
                "olive oil, for drizzling",
                "sea scallops, on the shell",
                "fresh chervil",
                "cup/ 250ml frozen peas"],
                                         
                                         instructions: ["Heat the oil in a stockpot over medium heat. ",
                                                        "Add the ketchup, rosemary, thyme, and the crab and lobster shells and stir.",
                                                        "Add the mushrooms and cook until browned, about 5 minutes more",
                                                        "Keep warm ",
                                                        "Slowly add the olive oil while processing until a smooth paste forms",
                                                        "Before serving, add the peas to the leeks-mushroom mixture to warm them up"])
        
        let FilipinoSingang = Recipe(category: "Main Dish", name: "Filipino Singang", image: UIImage(named: "FilipinoSingang.jpg")!, time: 140, difficulty: "Easy", serving: 6, ingredients:
            [
                "2 lbs country ribs, boneless",
                "4 cups water",
                "1 cup mustard greens, chopped (optional)",
                "1 large onion, chopped",
                "1 small jalapeno, chopped (optional)",
                "1 (1 7/8 ounce) packetsinigang soup mix (Knorrs or Mama Sita's, found in Asian aisle)",
                "1⁄16 teaspoon Accent seasoning"
                ],
                                             
                                             instructions: ["In a large soup pot add the water, pork, onions, jalapeno and seasoning mix, stir well.",
                                                            "Bring to a boil and then simmer for 45 minutes.",
                                                            "Add mustard greens if using.",
                                                            "CROCK POT METHOD:",
                                                            "Add the water, pork, onions, jalapeno and seasoning mix to crock pot, stir well.",
                                                            "Cook on low for 6-8 hours or high 3-4 hours",
                                                            "Serve hot over cooked jasmine rice."])
        
        
        let WhiteChocolatePavlova = Recipe(category: "Dessert", name: "White Chocolate Pavlova", image: UIImage(named: "WhiteChocolatePavlova.jpg")!, time: 200, difficulty: "Medium", serving: 8, ingredients:
            [
                "4 large egg whites",
                "1 cup/ 250ml sugar",
                "3 cups/ 750ml fresh ground cherries",
                "1⁄2 cup/ 125ml sugar",
                "1 lemon, juice and zest of",
                "1 orange, juice and zest of",
                "2 cups/ 500ml 35-percent cream",
                "4 egg yolks",
                "1⁄4 cup/ 60ml sugar",
                "3 cups/ 750ml fresh ground cherries",
                "2 cups/ 500ml chopped white chocolate"
            ],
                                     
                                     instructions: ["Start adding the sugar, 1 tablespoon at a time, and continue",
                                                    "Test to see if the sugar is fully dissolved by rubbing a little of the meringue between",
                                                    "If it feels gritty the sugar has not fully dissolved, so keep beating until it feels smooth",
                                                    "Gently spread the meringue into 8 small rounds on the parchment paper,",
                                                    "Bake until the outside of the meringues is dry, about 3 hours. ",
                                                    "Bring the cream just to a simmer in a saucepan. Whisk together the egg yolks and sugar in a bowl",
                                                    "Stir until the chocolate is melted. Refrigerate for 1 hour"])
        
        
        let WhiteSangria = Recipe(category: "Beverage", name: "White Sangria", image: UIImage(named: "whiteSangaria.jpg")!, time: 150, difficulty: "Easy", serving: 8, ingredients:
            [
                "3 lemons, zest of",
                "13 oranges, zest of",
                "2 cups/ 500ml white port",
                "1 cup/ 250ml raspberries",
                "1⁄2 cup/ 125ml orange liqueur, such as Triple Sec",
                "1 -2 peach, peeled, halved and diced",
                "1 cup/ 250ml corinthian grapes, frozen",
                "4 egg yolks",
                "11 bottle/ 750ml sparkling white wine",
                "3 cups/ 750ml fresh ground cherries",
                "2 cups/ 500ml chopped white chocolate"
            ],
                                           
                                           instructions: ["Preheat the oven to 150 degrees F (65 degrees C)",
                                                          "Spread the lemon and orange zest on a baking sheet lined with parchment paper",
                                                          "Using a spice grinder, reduce the zest to a fine powder.",
                                                          "Mix the port, raspberries, orange liqueur and peaches in a big mason jar",
                                                          "Rim tall serving glasses with the zest powder. Pour the sangria into the glasses, filling them one-third of the way full"])
        
        
        
        
        let LaughingBirdShrimp = Recipe(category: "Salad", name: "Laughing Bird Shrimp", image: UIImage(named: "laughingBirdShrimp.jpg")!, time: 50, difficulty: "Medium", serving: 4, ingredients:
            [
                "3 tablespoons/ 45ml olive oil",
                "3 tomatoes, chopped",
                "2 cups/ 500ml white port",
                "2 heads black garlic, cloves peeled and chopped",
                "1 cucumber, peeled, seeded and chopped",
                "1 jalapeno pepper, seeded and chopped",
                "2 avocados",
                "1 lime, juice of",
                "salt & freshly ground black pepper",
                "3 cups/ 750ml fresh ground cherries",
                "olive oil"
            ],
                                  
                                  instructions: ["Pulse the olive oil, tomatoes, garlic, cucumber, jalapeno, onion, and lime zest",
                                                 "Season with salt and pepper",
                                                 "Heat the oil in a skillet over high heat",
                                                 "Season with salt and pepper",
                                                 " Divide the avocados among 4 plates. Top with a generous spoonful of salsa",
                                                 "the shrimp and the caviar",
                                                 "Cook's Note",
                                                 "Laughing Bird shrimp have a sweet flavor.",
                                                 "If you can't find them or prefer to use other shrimp, go for it",
                                                 "Divide the avocados among 4 plates. Top with a generous spoonful of salsa"])
        
        
        
        let RootVegetableRisotto = Recipe(category: "Main Dish", name: "Root Vegetable Risotto", image: UIImage(named: "vegetableRisotto.jpg")!, time: 50, difficulty: "Easy", serving: 8, ingredients:
            [
                "8 -10 large carrots",
                "1 teaspoon/ 5ml cornstarch, diluted in water",
                "1 cup/ 250ml butter, melted",
                "2 heads black garlic, cloves peeled and chopped",
                "Salt & freshly ground black pepper",
                "4 cups/ 1 liter vegetable stock, store-bought or homemade",
                "2 cups/ 500ml peeled and diced parsnips",
                "1⁄4 cup/ 60ml butter",
                "1 cup/ 250ml grated parmigiano-reggiano cheese",
                "1⁄4 cup chopped fresh parsley",
                "salt & freshly ground black pepper",
                "8 -10 large carrots",
                "3 tablespoons/ 45ml olive oil",
                "1 cup/ 250ml butter, melted",
                "2 heads black garlic, cloves peeled and chopped",
                "1 teaspoon/ 5ml steak spice",
                "micro herbs, for garnish",
                "2 cups/ 500ml peeled and diced parsnips",
                "1⁄4 cup/ 60ml butter",
                "1 cup/ 250ml grated parmigiano-reggiano cheese",
                "1⁄4 cup chopped fresh parsley",
                "salt & freshly ground black pepper"
            ],
                                        
                                        instructions: ["Pulse the olive oil, tomatoes, garlic, cucumber, jalapeno, onion, and lime zest",
                                                       "Season with salt and pepper",
                                                       "Heat the oil in a skillet over high heat",
                                                       "Season with salt and pepper",
                                                       " Divide the avocados among 4 plates. Top with a generous spoonful of salsa",
                                                       "the shrimp and the caviar",
                                                       "Cook's Note",
                                                       "Laughing Bird shrimp have a sweet flavor.",
                                                       "If you can't find them or prefer to use other shrimp, go for it",
                                                       "Divide the avocados among 4 plates. Top with a generous spoonful of salsa"])
        
        
        
        
        let FilipinoChicken = Recipe(category: "Salad", name: "Filipino Chicken", image: UIImage(named: "filipinoChicken.jpg")!, time: 50, difficulty: "Easy", serving: 2, ingredients:
            [
                "2 lbs chicken breasts (or any part of the chicken you like",
                "4 cups chicken broth",
                "4 tablespoons chopped ginger (you can add more or lessen)",
                "2 heads black garlic, cloves peeled and chopped",
                "1 tablespoon chopped garlic",
                "3 -4 chayotes (peeled and cut into 1 inch cubes)",
                "1 teaspoon salt",
                "1⁄16 teaspoon Accent seasoning",
                "salt & freshly ground black pepper",
                "1 cup chopped bok choy (optional, a few leaves used for)",
                "olive oil"
            ],
                                        
                                        instructions: ["In a large stock, add the cut up chicken, chicken broth, ginger, garlic",
                                                       "Bring to a boil and then simmer for 45 - 50 minutes.",
                                                       "Heat the oil in a skillet over high heat",
                                                       "Season with salt and pepper",
                                                       " Divide the avocados among 4 plates. Top with a generous spoonful of salsa",
                                                       "Stir in the bok choy if using",
                                                       "Serve hot or on top of cooked jasmine rice",
                                                       "CROCK POT METHOD: ",
                                                       "Add the cut up chicken, chicken broth",
                                                       "Cook on low for 6 hours or high for 3 hours",
                                                       "Serve hot or on top of cooked jasmine rice",
                                                       "Add the chayote and bok choy and cook for another",
                                                       "15-20 minutes until the chayote is tender",
                                                       "Serve hot or on top of cooked jasmine rice."])
        
        

        let PotatoLatkes = Recipe(category: "Beverage", name: "Potato Latkes ", image: UIImage(named: "potatoLatkes.jpg")!, time: 50, difficulty: "Medium", serving: 6, ingredients:
            [
                "1 tablespoon/ 15ml olive oil",
                "2 carrots, chopped",
                "2 celery ribs, chopped",
                "1 onion, chopped",
                "3 tablespoons/ 45ml ketchup",
                "1 tablespoon/ 15ml peppercorn",
                "1 bunch fresh parsley, chopped",
                "4 egg yolks",
                "2 eggs, beaten",
                "soft ricotta cheese",
                "fried egg, sunny-side up"
            ],
                                  
                                  instructions: ["Heat the oil in a stockpot over medium-high heat. Saute the carrots, celery and onions",
                                                 " Stir in the ketchup, peppercorns, tomatoes and garlic",
                                                 "Using a spice grinder, reduce the zest to a fine powder.",
                                                 "Add the basil, parsley and enough water to cover",
                                                 "Simmer over low heat for about 45 minutes. Strain",
                                                 "Drizzle with the oil, add the thyme and season with salt and pepper",
                                                 "Bake for 45 minutes. Let cool",
                                                 "Heat the oil in a saucepan over medium-high heat",
                                                 "Stir in the butter, and then the chives and parsley",
                                                 "Coarsely grate the potatoes into a large bowl of cold water",
                                                 "Bake for 45 minutes. Let cool",
                                                 "Heat the canola oil in an ovenproof nonstick skillet over medium-high heat until hot but not smoking",
                                                 "about 2 minutes per side. Transfer the skillet to the oven and cook for about 5 ",
                                                 "Serve the latkes with a scoop of ricotta, the roasted tomatoes, zucchini and fried eggs"])
        

        
        
        
        
        
        
        let MoltenCaramel = Recipe(category: "Dessert", name: "Molten Caramel", image: UIImage(named: "moltenCaramel.jpg")!, time: 25, difficulty: "Easy", serving: 3, ingredients:
            [
                "2 lbs chicken breasts (or any part of the chicken you like",
                "2 cups/ 500ml chopped white chocolate",
                "1⁄4 cup/ 60ml butter, plus more for the ramekins",
                "2 cups/ 500ml store-bought dulce de leche",
                "4 eggs, at room temperature",
                "1⁄4 cup/ 60ml sugar",
                "1 cup/ 250ml all-purpose flour",
                "maldon sea salt, for sprinkling on top",
                "salt & freshly ground black pepper",
                "1 cup chopped bok choy (optional, a few leaves used for)",
                "olive oil"
            ],
                                     
                                     instructions: ["In a large stock, add the cut up chicken, chicken broth, ginger, garlic",
                                                    "Bring to a boil and then simmer for 45 - 50 minutes",
                                                    "Melt the white chocolate with the butter in a saucepan over low heat",
                                                    "Add the dulce de leche and stir until incorporated",
                                                    "Remove from the heat and set aside.",
                                                    "Stir in the bok choy if using",
                                                    "Preheat the oven to 425 degrees F (220 degrees C)",
                                                    " Gradually add the white chocolate mixture, and then the flour",
                                                    "Take your time to avoid lumps.",
                                                    "Cook on low for 6 hours or high for 3 hours",
                                                    "Serve hot or on top of cooked jasmine rice",
                                                    "Add the chayote and bok choy and cook for another"])
        
        
        
        let RoastedSuckling = Recipe(category: "Main Dish", name: "Roasted Suckling", image: UIImage(named: "roastedSuckling.jpg")!, time: 45, difficulty: "Easy", serving: 3, ingredients:
            [
                "2 lbs chicken breasts (or any part of the chicken you like",
                "2 cups/ 500ml chopped white chocolate",
                "1⁄4 cup/ 60ml butter, plus more for the ramekins",
                "2 cups/ 500ml store-bought dulce de leche",
                "4 eggs, at room temperature",
                "1⁄4 cup/ 60ml sugar",
                "1 cup/ 250ml all-purpose flour",
                "maldon sea salt, for sprinkling on top",
                "salt & freshly ground black pepper",
                "1 cup chopped bok choy (optional, a few leaves used for)",
                "olive oil"
            ],
                                   
                                   instructions: ["In a large stock, add the cut up chicken, chicken broth, ginger, garlic",
                                                  "Bring to a boil and then simmer for 45 - 50 minutes",
                                                  "Melt the white chocolate with the butter in a saucepan over low heat",
                                                  "Add the dulce de leche and stir until incorporated",
                                                  "Remove from the heat and set aside.",
                                                  "Stir in the bok choy if using",
                                                  "Preheat the oven to 425 degrees F (220 degrees C)",
                                                  " Gradually add the white chocolate mixture, and then the flour",
                                                  "Take your time to avoid lumps.",
                                                  "Cook on low for 6 hours or high for 3 hours",
                                                  "Serve hot or on top of cooked jasmine rice",
                                                  "Add the chayote and bok choy and cook for another"])
        


        let AppleTurnover = Recipe(category: "Breakfast", name: "Apple Turnover", image: UIImage(named: "appleTurnover.jpg")!, time: 30, difficulty: "Easy", serving: 3, ingredients:
            [
                "1⁄4 cup/ 60ml sugar",
                "1 cup/ 250ml all-purpose flour",
                "maldon sea salt, for sprinkling on top",
                "salt & freshly ground black pepper",
                "1 cup chopped bok choy (optional, a few leaves used for)",
                "olive oil"
            ],
                                     
                                     instructions: [
                                                    "Remove from the heat and set aside.",
                                                    "Stir in the bok choy if using",
                                                    "Preheat the oven to 425 degrees F (220 degrees C)",
                                                    " Gradually add the white chocolate mixture, and then the flour",
                                                    "Take your time to avoid lumps.",
                                                    "Cook on low for 6 hours or high for 3 hours",
                                                    "Serve hot or on top of cooked jasmine rice",
                                                    "Add the chayote and bok choy and cook for another"])
        
        

        
        let LemonMadeleines = Recipe(category: "Breakfast", name: "Lemon Madeleines", image: UIImage(named: "lemonMadeleines.jpg")!, time: 78, difficulty: "Medium", serving: 6, ingredients:
            [
                "1⁄4 cup/ 60ml sugar",
                "1 cup/ 250ml all-purpose flour",
                "maldon sea salt, for sprinkling on top",
                "salt & freshly ground black pepper",
                "olive oil"
            ],
                                   
                                   instructions: [
                                    "Remove from the heat and set aside.",
                                    "Stir in the bok choy if using",
                                    "Take your time to avoid lumps.",
                                    "Cook on low for 6 hours or high for 3 hours",
                                    "Serve hot or on top of cooked jasmine rice",
                                    "Add the chayote and bok choy and cook for another",
                                    "Remove from the heat and set aside.",
                                    "Stir in the bok choy if using",
                                    "Take your time to avoid lumps.",
                                    "Cook on low for 6 hours or high for 3 hours"])
        
        
        

        let FishTacos = Recipe(category: "Breakfast", name: "Fish Tacos", image: UIImage(named: "fishTacos.jpg")!, time: 45, difficulty: "Easy", serving: 4, ingredients:
            [
                "1⁄4 cup/ 60ml sugar",
                "1 cup/ 250ml all-purpose flour",
                "maldon sea salt, for sprinkling on top",
                "salt & freshly ground black pepper",
                "olive oil"
            ],
                                     
                                     instructions: [
                                        "Remove from the heat and set aside.",
                                        "Stir in the bok choy if using",
                                        "Take your time to avoid lumps.",
                                        "Cook on low for 6 hours or high for 3 hours",
                                        "Serve hot or on top of cooked jasmine rice",
                                        "Add the chayote and bok choy and cook for another",
                                        "Remove from the heat and set aside.",
                                        "Stir in the bok choy if using",
                                        "Take your time to avoid lumps.",
                                        "Cook on low for 6 hours or high for 3 hours"])
        
        

    
        let HomemadePeachIced = Recipe(category: "Dessert", name: "Homemade Peach Iced", image: UIImage(named: "homemadePeachIcedTea.jpg")!, time: 25, difficulty: "Easy", serving: 2, ingredients:
            [
                "1⁄4 cup/ 60ml sugar",
                "1 cup/ 250ml all-purpose flour",
                "maldon sea salt, for sprinkling on top",
                "salt & freshly ground black pepper",
                "olive oil"
            ],
                               
                               instructions: [
                                "Remove from the heat and set aside.",
                                "Stir in the bok choy if using",
                                "Take your time to avoid lumps.",
                                "Cook on low for 6 hours or high for 3 hours"])
        

        
        let tempList = [pasta, garlicBread, OvenFriedChickenChimichangas, FilipinoKamatis,
                        BeefTartare, ClementineChocolateSauce, ThreeBeanBakedBeans, SeafoodStewWithCroutons, FilipinoSingang,
                        WhiteChocolatePavlova, WhiteSangria, LaughingBirdShrimp, RootVegetableRisotto, FilipinoChicken, PotatoLatkes,
                        MoltenCaramel, RoastedSuckling, AppleTurnover, LemonMadeleines, FishTacos, HomemadePeachIced]

        
        
        
        return tempList
    }
    
    
    
    //Returns a list of categories for recipe
    func populateCategories() -> [String] {
        
        let tempList = RecipeList().loadRecipe()
        
        var categories = [String]()
        
        for recipe in tempList {
            categories.append(recipe.category)
        }
        
        return categories
    }
    
    

    
    
}// End Struct
