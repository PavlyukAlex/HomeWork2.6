//
//  ViewController.swift
//  HomeWork2.6
//
//  Created by Oleksiy Pavlyuk on 28/05/2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    private let correctUser = "User"
    private let correctPassword = "Password"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTextField.placeholder = "User"
        passwordTextField.placeholder = "Password"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let secondVC = segue.destination as? SecondViewController  else { return }
        secondVC.user = correctUser
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func logInPressed () {
        
        guard userNameTextField.text == correctUser, passwordTextField.text == correctPassword else {
            
        showAlert(title: "Invalid login or password", message: "Please enter the correct login or password")
            return
        }
        performSegue(withIdentifier: "ShowSecondVC", sender: nil)
    }
    
    @IBAction func unwindToFirstVC(segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
        
    }
    
    
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}



