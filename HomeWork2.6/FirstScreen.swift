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
        
        userNameTextField.delegate = self
        passwordTextField.delegate = self
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let secondScreen = segue.destination as? SecondScreen else { return }
        
        secondScreen.user = correctUser
        secondScreen.password = correctPassword
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    

    @IBAction func unwind(for segue: UIStoryboardSegue) {
         
    }
    
    
    @IBAction func logInPressed() {
        
    guard userNameTextField.text == correctUser, passwordTextField.text == correctPassword else {
            showAlert(title: "Invalid login or password", message: "Please enter the correct login or password")
            return
            
        }
        performSegue(withIdentifier: "SecondScreen", sender: self)
        view.endEditing(true)
    }
    
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    @IBAction func forgotToDoRegistration(_ sender: UIButton) {
        
        let tag = sender.tag
           let message = tag == 0 ? "Your password is User" : ""
           showAlert(title: "Error", message: message)    }
    
    @IBAction func forgotRegistration(_ sender: UIButton) {
       
        let tag = sender.tag
           let message = tag == 1 ? "Your password is Password" : ""
           showAlert(title: "Error", message: message)
    }
    
}
extension FirstScreen: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.becomeFirstResponder()
    }
}
    

