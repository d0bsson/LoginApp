//
//  ViewController.swift
//  LoginApp
//
//  Created by Дэвид Бердников on 29.03.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var logInButton: UIButton!
    
    @IBOutlet weak var forgotNameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    @IBOutlet weak var userNameTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = userNameTF.text
    }
}


