//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Дэвид Бердников on 30.03.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    
    @IBOutlet weak var logOutButton: UIButton!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = ("Welcome, " + userName)
    }
    @IBAction func logOutAction() {
        dismiss(animated: true)
    }
    

}
