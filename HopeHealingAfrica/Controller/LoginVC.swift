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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hope.frame = CGRect(x: view.frame.size.width / 2 - hope.frame.size.width / 2, y: 50, width: hope.frame.size.width, height: hope.frame.size.height)
        
        closeButton.frame = CGRect(x: view.frame.size.width / 2 - closeButton.frame.size.width / 2, y: 500, width: closeButton.frame.size.width, height: closeButton.frame.size.height)

        
    }

    @IBAction func closeButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
