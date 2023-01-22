//
//  SecondView.swift
//  LoginApp
//
//  Created by Николай Коваленко on 16.12.2022.
//

import SwiftUI

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var grettingTF: UILabel!
    
    var userName: User!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        grettingTF.text = "Hello, \(userName.information.name) \(userName.information.surname)"
        
        
    }
    
    
}


