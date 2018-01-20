//
//  CreateAccountVC.swift
//  HopeHealingAfrica
//
//  Created by Wise Osagie on 1/15/18.
//  Copyright © 2018 Wise Osagie. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passTxt: UITextField!
    
    @IBOutlet weak var userImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func createAcctPressed(_ sender: Any) {
        guard let email = emailTxt.text , emailTxt.text != "" else {
            return
        }
        guard let pass = passTxt.text , passTxt.text != "" else {
            return
        }
        
        AuthService.instance.registerUser(email: email, password: pass) {
            (success) in
            if success {
                AuthService.instance.loginUser(email: email, password: pass, completion: {(success) in
                    
                    if success {
                        print("Logged in user", AuthService.instance.authToken)
                    }
                })
            }
        }
    }
    
   
    
    @IBAction func pickAvatarPressed(_ sender: Any) {
    }
    @IBAction func pickBGColorPressed(_ sender: Any) {
    }
    
    
    
    
    @IBAction func closedPressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
}
