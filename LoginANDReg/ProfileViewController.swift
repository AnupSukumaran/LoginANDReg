//
//  ProfileViewController.swift
//  LoginANDReg
//
//  Created by Sukumar Anup Sukumaran on 02/06/18.
//  Copyright © 2018 TechTonic. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    
    @IBOutlet weak var profileName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        UserDefaults.standard.set("12345", forKey: Globally.shared.password)
        UserDefaults.standard.set("Anup", forKey: Globally.shared.username)
        profileName.text = UserDefaults.standard.value(forKey: "username") as? String
    }
    
    override func viewDidAppear(_ animated: Bool) {
         loginChecker()
    }
    
    func loginChecker(){
        
        if UserDefaults.standard.bool(forKey: "Session") {
             print("INSESSION")
            print("Already loged in = \(UserDefaults.standard.bool(forKey: Globally.shared.Session))")
           
        }else{
             print("NOTINSESSION")
            print("Already loged in = \(UserDefaults.standard.bool(forKey: Globally.shared.Session))")
            callingLoginPage()
        }
        
        
        
    }
    
    func callingLoginPage() {
        let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "page1") as! LoginNewViewController
        
        present(vc, animated: true, completion: nil)
    }
    
    @IBAction func LogOutAction(_ sender: Any) {
        
        UserDefaults.standard.removeObject(forKey: Globally.shared.Session)
        callingLoginPage()
        
    }
    
    
    @IBAction func unwindToProfilePage(segue: UIStoryboardSegue){
        print("UnwindingWorks")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    

   

}
