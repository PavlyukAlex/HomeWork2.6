//
//  SecondScreen.swift
//  HomeWork2.6
//
//  Created by Oleksiy Pavlyuk on 30/05/2023.
//

import UIKit

class SecondScreen: UIViewController {
    
    var user = ""
    var password = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is FirstScreen {
            
        }
    }
}
