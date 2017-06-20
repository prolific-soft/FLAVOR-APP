//
//  LogInSignUpViewController.swift
//  FLAVOR
//
//  Created by Chidi Emeh on 6/18/17.
//  Copyright © 2017 Chidi Emeh. All rights reserved.
//

import UIKit

class LogInSignUpViewController: UIViewController {
    
    //UI Properties
    @IBOutlet weak var loginButton: CustomButton!
    @IBOutlet weak var signupButton: CustomButton!
    @IBOutlet weak var dontHaveAccount: CustomLabel!
    @IBOutlet weak var flavorLabel: CustomLabel!
   
    
    //First Loading Function
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()

    }

    
    //Set up the views and color
    func configureView(){
        let orange = CustomColor(withFrame: loginButton.frame).orangeColor()
        
        //Radius
        signupButton.layer.cornerRadius = 25
        signupButton.layer.masksToBounds = true
        loginButton.layer.cornerRadius = 25
        loginButton.layer.masksToBounds = true
        
        
        signupButton.layer.borderWidth = 2
        signupButton.backgroundColor = UIColor.white
        signupButton.layer.borderColor = orange.cgColor
        signupButton.setSpacing(space: 1.5)

        signupButton.tintColor =  orange
        signupButton.titleLabel?.textColor = orange
        loginButton.setSpacing(space: 1.5)
        
        dontHaveAccount.setSpacing(space: 1)
        flavorLabel.setSpacing(space: 1.5)
        
        
    }


}
