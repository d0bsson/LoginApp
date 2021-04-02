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
    
    private let user = "user"
    private let password = "12345"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.user = user
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func logInButtonAction() {
        if userNameTF.text != user || passwordTF.text != password {
            showAlert(title: "Atantion!", message: "Wrong login or password!")
        }
        guard let inputText = userNameTF.text, !inputText.isEmpty else {
            showAlert(title: "Atantion!", message: "Login or password is empty!")
            return
        }
    }

    @IBAction func forgotUserNameAction() {
        showAlert(title: "Your username is", message: user)
    }
    
    @IBAction func forgotPasswordAction() {
        showAlert(title: "Your password is", message: password)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        let _ = segue.source as? WelcomeViewController
        userNameTF.text = ""
        passwordTF.text = ""
    }
}


//MARK: extension

extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        let correctAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(correctAction)
        present(alert, animated: true)
        userNameTF.text = ""
        passwordTF.text = ""
    }
}
    
    
    


    
    




