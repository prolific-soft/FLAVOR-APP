//
//  SigUpViewController.swift
//  FLAVOR
//
//  Created by Chidi Emeh on 6/19/17.
//  Copyright © 2017 Chidi Emeh. All rights reserved.
//

import UIKit

class SigUpViewController: UIViewController {

    //UI Properties
    @IBOutlet weak var nameTextField: CustomTextField!
    @IBOutlet weak var emailTextField: CustomTextField!
    @IBOutlet weak var passwordTextField: CustomTextField!
    @IBOutlet weak var createAccountButtonLabel: CustomButton!
    
 
    
    //First Loading Func
    override func viewDidLoad() {
        super.viewDidLoad()
        configureButton()
        
    }

    //Dismiss viewController
    @IBAction func backButton_Touch_Up_Inside(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    //Setup button
    func configureButton() {
        createAccountButtonLabel.layer.cornerRadius = 25
        createAccountButtonLabel.setSpacing(space: 1.5)
        createAccountButtonLabel.buttomShadowOffset()
      
    }
    

}
