//
//  SecondViewController.swift
//  HomeWork2.6
//
//  Created by Oleksiy Pavlyuk on 29/05/2023.
//

import UIKit

class SecondViewController: UIViewController {

    var user: String?
    var password: String?
       
    override func viewDidLoad() {
    super.viewDidLoad()
           
    if let user = user, let password = password {
    print("Logged in as: \(user), Password: \(password)")
        
           }
       }
       
       @IBAction func logoutButtonTapped(_ sender: UIButton) {
           // Perform logout actions here
           
           
       }
   }
       

    


