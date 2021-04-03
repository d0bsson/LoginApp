//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Дэвид Бердников on 30.03.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    
    var user = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = ("Welcome \(user)!")
    }
    @IBAction func logOutAction() {
        dismiss(animated: true)
    }
    

}
