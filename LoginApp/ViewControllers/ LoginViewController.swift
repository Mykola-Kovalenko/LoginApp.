//
//  ViewController.swift
//  LoginApp
//
//  Created by Николай Коваленко on 11.12.2022.
//

import UIKit

final class  LoginViewController: UIViewController {
    
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let user = User.getUserData()
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBar = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBar.viewControllers else { return }
        
        for viewController in viewControllers {
            if let destinationVC = viewController as? WelcomeViewController {
                destinationVC.userName = user
            } else if let userBioVC = viewController as? BioViewController {
                userBioVC.user = user
            } else if let contactVC = viewController as? ContactViewController {
                contactVC.user = user
            }
        }
    }
    
    
    @IBAction func loginButtonDidTAped() {
        if userNameTF.text == user.login, passwordTF.text == user.password {
        } else {
            showAlert(
                Title: "Invaild login or password",
                Message: "Please try again"
            )
            passwordTF.text = ""
        }
    }
    
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    
    @IBAction func fogotUserDidTaped() {
        showAlert(Title: "OOPS!",
                  Message: "Your name is (User) 🤣"
        )
    }
    @IBAction func fogotPassDidTaped() {
        showAlert(Title: "OOPS!",
                  Message: "Your pass is (Password) 🤣"
        )
    }
    
    
    // MARK: - Alerts
}
extension  LoginViewController {
    private func showAlert(Title title: String, Message message: String) {
        let userAlert = UIAlertController(title: title, message: message , preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        userAlert.addAction(okAction)
        present(userAlert, animated: true)
    }
}





