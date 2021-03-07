//
//  SignUpViewController.swift
//  Cafe-Nibm
//
//  Created by Dilan Pramodya on 2021-03-07.
//

import UIKit

class SignUpViewController: UIViewController {
    
    
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var phoneNoText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var signupButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        errorLabel.alpha = 0
    }
    
    func validateFields() -> String? {
        //Check all fields are not empty
        if emailText.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" || phoneNoText.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" || passwordText.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
            return "Please fill in all fields"
        }
        
        //Check if the password is secuire
        let password = passwordText.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        static func isPasswordValid(_ password: String) -> Bool {
            let passwordText = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}")
        }
        
        return nil
        
    }
    
    @IBAction func signUpBtn(_ sender: UIButton) {
        //Validate the fields
        
        //Create user
        
        //Transition to the home screen
    }
    
}
