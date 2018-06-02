//
//  LoginNewViewController.swift
//  LoginANDReg
//
//  Created by Sukumar Anup Sukumaran on 02/06/18.
//  Copyright © 2018 TechTonic. All rights reserved.
//

import UIKit

class LoginNewViewController: UIViewController {
    
    
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
    }
    
    @IBAction func LoginAction(_ sender: Any) {
        
        if (usernameTextField.text?.isEmpty)! || (passwordTextField.text?.isEmpty)! {
            
            print("Please login")
            
        }else{
            
            let password: String = UserDefaults.standard.value(forKey: Globally.shared.password) as! String
            let userName: String = UserDefaults.standard.value(forKey: Globally.shared.username) as! String
            
            if password == passwordTextField.text && userName == usernameTextField.text {
                print("loggedin")
                UserDefaults.standard.set(true, forKey: Globally.shared.Session)
                performSegue(withIdentifier: "unwindToProfilePage", sender: self)
                
            }
            
 
        }
        
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

   
}
