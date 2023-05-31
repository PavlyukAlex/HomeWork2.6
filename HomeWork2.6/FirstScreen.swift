//
//  FirstScreen.swift
//  HomeWork2.6
//
//  Created by Oleksiy Pavlyuk on 28/05/2023.
//

import UIKit

class FirstScreen: UIViewController {
    
    
    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    private let correctUser = "User"
    private let correctPassword = "Password"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let secondScreen = segue.destination as? SecondScreen else { return }
        
        secondScreen.user = correctUser
        secondScreen.password = correctPassword
        
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        
        
    }
    
    
    @IBAction func logInPressed() {
        guard userNameTextField.text == correctUser, passwordTextField.text == correctPassword else {
            showAlert(title: "Invalid login or password", message: "Please enter the correct login or password")
            return
        }
        performSegue(withIdentifier: "SecondScreen", sender: self)        }
    
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
        
}
