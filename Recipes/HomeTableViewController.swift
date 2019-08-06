//
//  HomeTableViewController.swift
//  Recipes
//
//  Created by Oleh Dmytriv on 2019-08-05.
//  Copyright © 2019 Oleh Dmytriv. All rights reserved.
//

import UIKit

class HomeTableViewController: UIViewController {
    
        @IBOutlet var tableView: UITableView!
        var recipes: [Recipe] = []
    
    
        override func viewDidLoad() {
            super.viewDidLoad()
            recipes = createArray()
            
            tableView.delegate = self
            tableView.dataSource = self
        }
        func createArray() -> [Recipe]{
            
            var tempRecipes:[Recipe] = []
            
            let recipe1 = Recipe(mainImage: #imageLiteral(resourceName: "chicken-marsala"), category: "Chicken", name: "Chicken Marsala", time: "30 minutes", difficulty: "Medium", serves: "4 People")
            let recipe2 = Recipe(mainImage: #imageLiteral(resourceName: "sweet-spicy-chicken"), category: "Chicken", name: "Sweet, Sticky and Spicy Chicken", time: "22 minutes", difficulty: "Easy", serves: "4 People")
            let recipe3 = Recipe(mainImage: #imageLiteral(resourceName: "chorizo-bell-peppers"), category: "Stuffed", name: "Chorizo Stuffed Bell Peppers", time: "1 hour 40 minutes", difficulty: "Hard", serves: "6 People")
            let recipe4 = Recipe(mainImage: #imageLiteral(resourceName: "chocolate-chip-cookie"), category: "Dessert", name: "Best Chocolate Chip Cookie", time: "1 hour", difficulty: "Easy", serves: "24 People")
            let recipe5 = Recipe(mainImage: #imageLiteral(resourceName: "guacamole"), category: "Dips", name: "Guacamole", time: "10 minutes", difficulty: "Easy", serves: "4 People")
            
            tempRecipes.append(recipe1)
            tempRecipes.append(recipe2)
            tempRecipes.append(recipe3)
            tempRecipes.append(recipe4)
            
            return tempRecipes
        }
        
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
        }
    }
    
extension HomeTableViewController: UITableViewDelegate, UITableViewDataSource {
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return recipes.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
            let recipe = recipes[indexPath.row]
            let cell = tableView.dequeueReusableCell(withIdentifier: "RecipeCell") as! RecipeCell
            cell.selectionStyle = .none
            cell.setRecipe(recipe: recipe)
            return cell
        }
        
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 260
        }
        
        
}
