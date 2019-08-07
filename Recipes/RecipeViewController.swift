//
//  RecipeViewController.swift
//  Recipes
//
//  Created by Oleh Dmytriv on 2019-08-06.
//  Copyright © 2019 Oleh Dmytriv. All rights reserved.
//

import UIKit

class RecipeViewController: UIViewController {

  
    @IBOutlet weak var mainImageRecipe: UIImageView!
    @IBOutlet weak var mainCategory: UILabel!
    @IBOutlet weak var mainName: UILabel!
    @IBOutlet weak var mainTime: UILabel!
    @IBOutlet weak var mainDifficulty: UILabel!
    @IBOutlet weak var mainServes: UILabel!
    @IBOutlet weak var ingredients: UITextView!
    @IBOutlet weak var instructions: UITextView!
    
    var image = UIImage()
    var category = ""
    var name = ""
    var time = ""
    var difficulty = ""
    var serves = ""
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainImageRecipe.image = image
        mainCategory.text = category
        mainName.text = name
        mainTime.text = time
        mainDifficulty.text = difficulty
        mainServes.text = serves
        
        if(name == "Chicken Marsala"){
            instructions.text = "1.   In a shallow dish or bowl, mix together the flour, salt, pepper and oregano. Coat chicken pieces in flour mixture.\n2.   In a large skillet, melt butter in oil over medium heat. Place chicken in the pan, and lightly brown. Turn over chicken pieces and add mushrooms. Pour in wine and sherry. Cover skillet; simmer chicken 10 minutes, turning once, until no longer pink and juices run clear."
            ingredients.text = "1/4 cup all-purpose flour for coating \n1/2 teaspoon salt \n1/4 teaspoon ground black pepper \n1/2 teaspoon dried oregan \n4 skinless, boneless chicken breast halves - pounded \n1/4 inch thick \n4 tablespoons butter \n4 tablespoons olive oil \n1 cup sliced mushrooms \n1/2 cup Marsala wine \n1/4 cup cooking sherry"
            
        }
        if(name == "Guacamole"){
            ingredients.text = "3 avocados - peeled, pitted, and mashed \n1 lime, juiced \n1 teaspoon salt \n1/2 cup diced onion \n3 tablespoons chopped fresh cilantro \n2 roma (plum) tomatoes, diced \n1 teaspoon minced garlic \n1 pinch ground cayenne pepper (optional)"
            instructions.text = "1.    In a medium bowl, mash together the avocados, lime juice, and salt. Mix in onion, cilantro, tomatoes, and garlic. Stir in cayenne pepper. Refrigerate 1 hour for best flavor, or serve immediately."
        }
        if(name == "Sweet, Sticky and Spicy Chicken"){
            ingredients.text = "1 tablespoon brown sugar \n2 tablespoons honey \n1/4 cup soy sauce \n2 teaspoons chopped fresh ginger root \n1 tablespoon vegetable oil \n4 skinless, boneless chicken breast halves - cut into 1/2 inch strips salt and pepper to taste \n2 teaspoons chopped garlic \n2 tablespoons hot sauce"
            instructions.text = "1.    Mix together brown sugar, honey, soy sauce, ginger, garlic and hot sauce in a small bowl. \n2.    Lightly salt and pepper the chicken strips. \n3.    Heat oil in a large skillet over medium heat. Add chicken strips and brown on both sides, about 1 minute per side. Pour the sauce over the chicken. Simmer uncovered until the sauce thickens, 8 to 10 minutes."
        }
        if(name == "Chorizo Stuffed Bell Peppers"){
            ingredients.text = "chopped fresh basil \n1 carrot, minced \nchopped fresh parsley \n4 cloves garlic, minced \n1 tablespoon Worcestershire sauce \n1/2 cup water \n1/2 cup chopped onion \nsalt and pepper to taste \n1 (14.5 ounce) can whole peeled tomatoes, chopped \n1 stalk celery, minced \n1/2 cup uncooked long grain rice \n1/3 cup shredded Cheddar cheese \n1/3 cup shredded Monterey Jack cheese \n1/3 cup shredded Mozzarella Cheese \n1 (10.75 ounce) can tomato soup \n1 pound chorizo sausage \n6 bell peppers, tops cut off and seeded"
            instructions.text = "1.    Bring a large pot of water to boil. Place peppers in boiling water, and cook 5 minutes. Remove, and set aside to cool. \n2.    Preheat oven to 350 degrees F (175 degrees C). \n3.    In a large skillet, cook chorizo until almost brown. Drain fat. Stir in celery, carrots, onions, and garlic. Cook until soft, about 5 minutes. Season with salt and pepper. Stir in tomatoes, Worcestershire sauce, parsley, basil, rice, and water. Cover, and simmer until rice is cooked, about 15 minutes. Remove from heat, and mix in Monterey Jack, Cheddar, and Mozzarella cheeses. \n4.    Place peppers upright on a baking sheet. Stuff each pepper with the chorizo mixture. Sprinkle extra cheese on top. \n5.    In a small bowl, combine tomato soup with just enough water to give the soup the consistency of gravy. Pour generously over peppers. Cover with foil. \n6.    Bake in preheated oven about 30 minutes."
        }
        if(name == "Best Chocolate Chip Cookie"){
            ingredients.text = "1 cup butter, softened \n1 cup white sugar \n1 cup packed brown sugar \n2 eggs \n2 teaspoons vanilla extract \n1 teaspoon baking soda \n2 teaspoons hot water \n1/2 teaspoon salt \n3 cups all-purpose flour \n2 cups semisweet chocolate chips\n1 cup chopped walnuts"
            instructions.text = "1.    Preheat oven to 350 degrees F (175 degrees C). \n2.    Cream together the butter, white sugar, and brown sugar until smooth. Beat in the eggs one at a time, then stir in the vanilla. Dissolve baking soda in hot water. Add to batter along with salt. Stir in flour, chocolate chips, and nuts. Drop by large spoonfuls onto ungreased pans. \n3.    Bake for about 10 minutes in the preheated oven, or until edges are nicely browned."
        }
    }
    
    
}
