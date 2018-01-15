//
//  CreateAccountVC.swift
//  HopeHealingAfrica
//
//  Created by Wise Osagie on 1/15/18.
//  Copyright © 2018 Wise Osagie. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func closedPressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
}
