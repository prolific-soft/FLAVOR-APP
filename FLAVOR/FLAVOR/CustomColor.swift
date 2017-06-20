//
//  CustomColor.swift
//  FLAVOR
//
//  Created by Chidi Emeh on 6/17/17.
//  Copyright © 2017 Chidi Emeh. All rights reserved.
//

import Foundation
import UIKit
import Chameleon



struct CustomColor {
    
    var customOrange: UIColor!
    
    init (withFrame: CGRect) {
        customOrange = UIColor(gradientStyle:UIGradientStyle.leftToRight, withFrame: withFrame, andColors:[UIColor(hexString: "FF8C2B", withAlpha: 1), UIColor(hexString: "FF6322", withAlpha: 1)])
    
    }
    
    func orangeColor() -> UIColor {
        return customOrange
    }
    
}



