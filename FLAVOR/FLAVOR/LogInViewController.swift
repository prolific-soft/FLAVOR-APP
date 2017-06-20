//
//  LogInViewController.swift
//  FLAVOR
//
//  Created by Chidi Emeh on 6/19/17.
//  Copyright © 2017 Chidi Emeh. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {

    //UI properties
    @IBOutlet weak var emailTextField: CustomTextField!
    @IBOutlet weak var passwordTextField: CustomTextField!
    @IBOutlet weak var logInButton: CustomButton!
    @IBOutlet weak var forgotPassWordLabel: CustomLabel!
    
    //First loading function
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureView()
    }
    
    //Go back to parent view
    @IBAction func backButton_Touch_Up_Inside(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

    //Set up the views and color
    func configureView(){
        let orange = CustomColor(withFrame: logInButton.frame).orangeColor()
        logInButton.backgroundColor = orange
        logInButton.layer.cornerRadius = 25
        logInButton.setSpacing(space: 1.5)
        logInButton.layer.masksToBounds = true
        forgotPassWordLabel.setSpacing(space: 1)
    }
    
    //Hide status bar
    override var prefersStatusBarHidden : Bool {
        return true
    }

}
