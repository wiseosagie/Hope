//
//  Constants.swift
//  HopeHealingAfrica
//
//  Created by Wise Osagie on 1/14/18.
//  Copyright © 2018 Wise Osagie. All rights reserved.
//

import Foundation

// type alias for registered user
typealias CompletionHandler = (_ Success: Bool) -> ()

// URL constant
let BASE_URL = " https://hopehealingafrica.herokuapp.com/"
let URL_REGITER = "\(BASE_URL)account/register"
// Segues
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"

// User DEfaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"

