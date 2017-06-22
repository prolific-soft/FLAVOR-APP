//
//  TabBarController.swift
//  FLAVOR
//
//  Created by Chidi Emeh on 6/21/17.
//  Copyright © 2017 Chidi Emeh. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let orange = CustomColor(withFrame: tabBar.frame).orangeColor()
        
        self.tabBar.tintColor = orange
       
    }

    

}
