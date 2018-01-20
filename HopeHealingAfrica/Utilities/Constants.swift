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
let BASE_URL = "https://hopehealingafrica.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"

let URL_LOGIN = "\(BASE_URL)account/login"

let URL_USER_ADD = "\(BASE_URL)user/add"

// Segues
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"

// User DEfaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"

//Headers
let HEADER = [
    "Content-Type": "application/json; charset=utf-8"
]

