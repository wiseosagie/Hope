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
let URL_USER_BY_EMAIL = "\(BASE_URL)user/byEmail/"
let URL_GET_CHANNELS = "\(BASE_URL)channel"

//Colors
let smackPurplePlaceHolder = #colorLiteral(red: 0.2176160459, green: 0.2660276819, blue: 1, alpha: 0.5)

//Notification Contant
let NOTIF_USER_DATA_DID_CHANGE = Notification.Name("notifUserDataChanged")
let NOTIF_CHANNELS_LOADED = Notification.Name("channelsLoaded")
let NOTIF_CHANNELS_SELECTED = Notification.Name("channelSelected")

// Segues
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"
let TO_AVATAR_PICKER = "toAvatarPicker"

// User DEfaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"

//Headers
let HEADER = [
    "Content-Type": "application/json; charset=utf-8"
]

let BEARER_HEADER = [
    "Authorization" : "Bearer \(AuthService.instance.authToken)",
    "Content-Type": "application/json; charset=utf-8"
]

