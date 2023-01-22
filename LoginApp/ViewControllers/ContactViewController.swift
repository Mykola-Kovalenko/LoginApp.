//
//  ContactViewController.swift
//  LoginApp
//
//  Created by Николай Коваленко on 22.01.2023.
//

import UIKit

class ContactViewController: UIViewController {
    
    @IBOutlet weak var facebookLink: UIButton!
    
    @IBOutlet var instLink: UIButton!
    
    @IBOutlet var tgLink: UIButton!
    
    
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func facebookButton(_ sender: UIButton) {
       let fbLink = URLComponents(string: user.contacts.facebook)!
        UIApplication.shared.open (fbLink.url!)
    }
    
    @IBAction func instagrammButton(_ sender: UIButton) {
        let instLink = URLComponents(string: user.contacts.instagramm)!
        UIApplication.shared.open(instLink.url!)
    }
    
    @IBAction func telegrammButton(_ sender: UIButton) {
        let tgLink = URLComponents(string: user.contacts.telegramm)!
        UIApplication.shared.open(tgLink.url!)
    }
    
}
