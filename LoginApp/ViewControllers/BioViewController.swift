//
//  BioViewController.swift
//  LoginApp
//
//  Created by Николай Коваленко on 21.01.2023.
//

import UIKit

class BioViewController: UIViewController {
    
    @IBOutlet var profileLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profileLabel.text = user.information.bio
    }
}
