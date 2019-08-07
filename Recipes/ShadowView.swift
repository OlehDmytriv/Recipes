//
//  ShadowView.swift
//  Recipes
//
//  Created by Oleh Dmytriv on 2019-08-06.
//  Copyright © 2019 Oleh Dmytriv. All rights reserved.
//

import UIKit

class ShadowView: UIView {
        
        // OUTPUT 1
    override func draw(_ rect: CGRect){
        applyShadow()
    }
    func applyShadow(){
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 0)
        self.layer.shadowOpacity = 0.3
        self.layer.shadowRadius = 8
        let radii = CGSize(width: 8, height: 8)
        
        self.layer.shadowPath = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: .allCorners, cornerRadii: radii).cgPath
        self.layer.shouldRasterize = true
        self.layer.rasterizationScale = UIScreen.main.scale
    }
    }


