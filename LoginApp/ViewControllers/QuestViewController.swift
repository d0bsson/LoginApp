//
//  QuestViewController.swift
//  LoginApp
//
//  Created by Дэвид Бердников on 03.04.2021.
//

import UIKit

class QuestViewController: UIViewController {

    @IBOutlet weak var answerButton: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    
    var user: User!
    var question: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        answerButton.setTitle("Answer", for: .normal)
        answerButton.layer.cornerRadius = 10
        questionLabel.text = question
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let answerVC = segue.destination as? AnswerViewController else { return }
        answerVC.answer = user.person.answer
    }
}
