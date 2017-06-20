//
//  CustomLabel.swift
//  FLAVOR
//
//  Created by Chidi Emeh on 6/19/17.
//  Copyright © 2017 Chidi Emeh. All rights reserved.
//

import UIKit

class CustomLabel: UILabel {

    /*
     Method to set the spacing of the label's text (Attributed text)
     @param : space -> takes a CGFloat
     */
    func setSpacing(space: CGFloat) {
        
        let attributedString = NSMutableAttributedString(string: self.text!)
        attributedString.addAttribute(NSKernAttributeName, value: space, range: NSRange(location: 0, length: attributedString.length))
        self.attributedText = attributedString
    }

}
