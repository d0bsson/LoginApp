//
//  InfoViewController.swift
//  LoginApp
//
//  Created by Дэвид Бердников on 03.04.2021.
//

import UIKit

class InfoViewController: UIViewController {
    @IBOutlet weak var qweLabel: UILabel!
    
    
    @IBOutlet weak var infoLabel: UILabel!
    
    var info: String!
    var qwe: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        infoLabel.text = info
    }
}
