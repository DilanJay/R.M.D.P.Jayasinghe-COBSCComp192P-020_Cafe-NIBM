//
//  SignUpViewController.swift
//  Cafe-Nibm
//
//  Created by Dilan Pramodya on 2021-03-07.
//

import UIKit
import FirebaseAuth
import Firebase

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
        
        if Validation.passwordValid(password) == false {
            return "8 cgrctr must have symbols"
        }
        
        return nil
        
    }
    
    @IBAction func signUpBtn(_ sender: UIButton) {
        //Validate the fields
        let error = validateFields()
        
        if error != nil {
            showError(error!)
        }
        else {
            
            let phoneNumber = phoneNoText.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let email = emailText.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let password = passwordText.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            
            //Create user
            Auth.auth().createUser(withEmail: email, password: password) { (result, err) in
                //Chech for errors
                if err != nil {
                    self.showError("Error creating the user")
                }
                else {
                    let db = Firestore.firestore()
                    db.collection("users").addDocument(data: ["phoneNumber" : phoneNumber, "uid" : result!.user.uid]) { (error) in
                        if error != nil {
                            self.showError("Error saving user data")
                        }
                    }
                    //Transition to the home screen
                    self.signUpSuccess()                }
            }
        }
        
    }
    
    func showError(_ message: String) {
        errorLabel.text = message
        errorLabel.alpha = 1
    }
    
    func signUpSuccess() {
        let locationviewConroller = storyboard?.instantiateViewController(identifier: Constants.Storyboard.locationViewController) as? LocationViewController
        
        view.window?.rootViewController = locationviewConroller
        view.window?.makeKeyAndVisible() 
    }
    
}
