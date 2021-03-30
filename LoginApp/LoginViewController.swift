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
    @IBOutlet weak var passwordTF: UITextField!
    
    private let login = "user"
    private let password = "12345"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = userNameTF.text
    }
    
    @IBAction func logInButtonAction() {
        guard let inputText = userNameTF.text, !inputText.isEmpty else {
            showAlert(title: "Atantion!", message: "Login or password is empty!")
            return
        }
    }
    @IBAction func forgotUserNameAction() {
        showForgotLogin(title: "Oh my god...", message: "I can enter your user name")
    }
    @IBAction func forgotPasswordAction() {
        showForgotPass(title: "Oh my god...", message: "I can enter your password 🤫")
    }
}


//MARK: extension

extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let correctAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(correctAction)
        present(alert, animated: true)
    }
    
    private func showForgotLogin(title: String, message: String) {
        let showLogin = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let correctLogin = UIAlertAction(title: "OK, thx!", style: .default) { _ in
            self.userNameTF.text = self.login
        }
        showLogin.addAction(correctLogin)
        present(showLogin, animated: true)
    }
    
    private func showForgotPass(title: String, message: String) {
        let showPass = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let correctPass = UIAlertAction(title: "OK, thx!", style: .default) { _ in
            self.passwordTF.text = self.password
        }
        showPass.addAction(correctPass)
        present(showPass, animated: true)
    }
}



