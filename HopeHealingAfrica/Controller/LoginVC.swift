//
//  LoginVC.swift
//  HopeHealingAfrica
//
//  Created by Wise Osagie on 1/15/18.
//  Copyright © 2018 Wise Osagie. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var hope: UIImageView!
    @IBOutlet weak var closeButton: UIButton!
    
    //Outlets
    
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hope.frame = CGRect(x: view.frame.size.width / 2 - hope.frame.size.width / 2, y: 50, width: hope.frame.size.width, height: hope.frame.size.height)
        
        closeButton.frame = CGRect(x: view.frame.size.width / 2 - closeButton.frame.size.width / 2, y: 500, width: closeButton.frame.size.width, height: closeButton.frame.size.height)

        setUpView()
        
    }

    @IBAction func closeButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func createAcctBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_CREATE_ACCOUNT, sender: nil)
    }
    
    @IBAction func loginPressed(_ sender: Any) {
        spinner.isHidden = false
        spinner.startAnimating()
        
        guard let email = usernameTxt.text, usernameTxt.text != "" else {return}
        guard let pass = passwordTxt.text, passwordTxt.text != "" else {return}
        
        AuthService.instance.loginUser(email: email, password: pass) { (success) in
            if success {
                AuthService.instance.findUserByEmail(completion: { (success) in
                    if success {
                        NotificationCenter.default.post(name: NOTIF_USER_DATA_DID_CHANGE, object: nil)
                        self.spinner.isHidden = true
                        self.spinner.stopAnimating()
                        self.dismiss(animated: true, completion: nil)
                    }
                })
            }
        }
        
    }
    
    
    func setUpView() {
        spinner.isHidden = true
        usernameTxt.attributedPlaceholder = NSAttributedString(string: "username", attributes: [NSForegroundColorAttributeName: smackPurplePlaceHolder])
        
        passwordTxt.attributedPlaceholder = NSAttributedString(string: "password", attributes: [NSForegroundColorAttributeName: smackPurplePlaceHolder])
    }

}
