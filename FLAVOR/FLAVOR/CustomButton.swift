//
//  CustomButton.swift
//  FLAVOR
//
//  Created by Chidi Emeh on 6/17/17.
//  Copyright © 2017 Chidi Emeh. All rights reserved.
//

import UIKit
import Chameleon

class CustomButton: UIButton {
  
    //Color and Border Radius
    override func draw(_ rect: CGRect) {
        let orange = CustomColor(withFrame: frame).orangeColor()
        self.backgroundColor = orange
        self.layer.cornerRadius = 25
        //self.layer.masksToBounds = true
    }
    
    
    // Method to set the spacing of the text (Attributed text)
    //@param : space -> takes a CGFloat
    func setSpacing(space: CGFloat) {
        let attributedString = NSMutableAttributedString(string: (titleLabel?.text!)!)
        attributedString.addAttribute(NSKernAttributeName, value: space, range: NSRange(location: 0, length: attributedString.length))
        self.setAttributedTitle(attributedString, for: .normal)
    }
    
    //Sets the shadow offset at the buttom
    func buttomShadowOffset() {
        self.layer.masksToBounds = false
        self.layer.shadowColor = UIColor.lightGray.cgColor
        self.layer.shadowOpacity = 1
        self.layer.shadowOffset = CGSize(width: 0, height: 3.7)
        self.layer.shadowRadius = 2
    }
    

}
