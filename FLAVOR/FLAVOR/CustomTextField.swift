//
//  CustomTextField.swift
//  FLAVOR
//
//  Created by Chidi Emeh on 6/19/17.
//  Copyright © 2017 Chidi Emeh. All rights reserved.
//

import UIKit

class CustomTextField: UITextField, UITextFieldDelegate {

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        self.layer.cornerRadius = 5.0
        
        self.layer.borderColor = UIColor(hexString: "E0E0E0").cgColor
        self.layer.borderWidth = 2.0
        
        //Set the color of placeholder
        self.attributedPlaceholder =
            NSAttributedString(string: self.placeholder!, attributes:[NSForegroundColorAttributeName : UIColor(hexString: "9E9E9E")])
        //Add padding to front of placeholer
        self.layer.sublayerTransform = CATransform3DMakeTranslation(5, 0, 0);
        
        self.delegate = self
    }
    
    //Ends editing of keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.endEditing(true)
        return true
    }

}
