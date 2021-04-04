//
//  AnswerViewController.swift
//  LoginApp
//
//  Created by Дэвид Бердников on 04.04.2021.
//

import UIKit

class AnswerViewController: UIViewController {
    
    @IBOutlet weak var answerLabel: UILabel!
    
    var answer: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        answerLabel.text = answer
    }
}
