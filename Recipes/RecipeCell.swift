//
//  RecipeCell.swift
//  Recipes
//
//  Created by Oleh Dmytriv on 2019-08-05.
//  Copyright © 2019 Oleh Dmytriv. All rights reserved.
//

import UIKit

class RecipeCell: UITableViewCell {

    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var category: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var difficulty: UILabel!
    @IBOutlet weak var serves: UILabel!
    
    func setRecipe(recipe: Recipe){
        mainImage.image = recipe.mainImage
        category.text = recipe.category
        name.text = recipe.name
        time.text = recipe.time
        difficulty.text = recipe.difficulty
        serves.text = recipe.serves
    }
        // Configure the view for the selected state
}
