//
//  LogInViewController.swift
//  Cafe-Nibm
//
//  Created by Dilan Pramodya on 2021-03-07.
//

import UIKit

class LogInViewController: UIViewController {
    
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        errorLabel.alpha = 0
    }
    
    @IBAction func logInBtn(_ sender: UIButton) {
    }
    
}
