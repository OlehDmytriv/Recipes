//
//  Recipe.swift
//  Recipes
//
//  Created by Oleh Dmytriv on 2019-08-05.
//  Copyright © 2019 Oleh Dmytriv. All rights reserved.
//

import Foundation
import UIKit
class Recipe {
    var mainImage: UIImage
    var category: String
    var name: String
    var time: String
    var difficulty: String
    var serves: String
    
    init(mainImage: UIImage, category: String, name: String, time: String, difficulty: String, serves: String) {
        self.mainImage = mainImage
        self.category = category
        self.name = name
        self.time = time
        self.difficulty = difficulty
        self.serves = serves
    }
}
