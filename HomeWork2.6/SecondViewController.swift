//
//  SecondViewController.swift
//  HomeWork2.6
//
//  Created by Oleksiy Pavlyuk on 28/05/2023.
//

import UIKit

class SecondViewController: UIViewController {
    
    var user: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let user = user {
            print("Logged in as: \(user)")
        }
        
        
    }
    
    @IBAction func logoutButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "unwindToFirstVC", sender: self)
        
    }
    @IBAction func unwindToSecondVC(segue: UIStoryboardSegue) {
        
    }
}
