//
//  RecipeViewController.swift
//  Recipes
//
//  Created by Oleh Dmytriv on 2019-08-06.
//  Copyright © 2019 Oleh Dmytriv. All rights reserved.
//

import UIKit

class RecipeViewController: UIViewController {

    @IBOutlet weak var ingredientsTable: UITableView!
    var ingredients = ["hero", "The Boys of Brighton Beach", "This Time is Different", "BS Book"]
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }

}
