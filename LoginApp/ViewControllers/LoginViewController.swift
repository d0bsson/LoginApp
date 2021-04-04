//
//  ViewController.swift
//  LoginApp
//
//  Created by Дэвид Бердников on 29.03.2021.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var logInButton: UIButton!
    
    @IBOutlet weak var forgotNameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    private let user = User(person: Person())
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else {return}
        guard let viewControllers = tabBarController.viewControllers else {return}
        
        for viewController in viewControllers {
            if let infoVC = viewController as? InfoViewController {
                infoVC.info = user.person.info
                }
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.userName = "\(user.person.name) \(user.person.secondName)"
            } else if let navigationVC = viewController as? UINavigationController {
                guard let questVC = navigationVC.topViewController as? QuestViewController else {return}
                questVC.user = user
                questVC.question = user.person.question
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func logInButtonAction() {
        if userNameTF.text != user.login || passwordTF.text != user.password {
            showAlert(title: "Atantion!", message: "Wrong login or password!")
        }
        guard let inputText = userNameTF.text, !inputText.isEmpty else {
            showAlert(title: "Atantion!", message: "Login or password is empty!")
            return
        }
    }

    @IBAction func forgotUserNameAction() {
        showAlert(title: "Your username is", message: user.login)
    }
    
    @IBAction func forgotPasswordAction() {
        showAlert(title: "Your password is", message: user.password)
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


    
    
    


    
    




