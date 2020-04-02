//
//  UserModel.swift
//  ActionWomen
//
//  Created by user164558 on 3/30/20.
//  Copyright © 2020 popo. All rights reserved.
//

import Foundation
import SwiftyRequest

struct User : Codable{
    
    let userId : String
    let username : String
    let password : String
    let email : String
    let __v : Int
    
    static func login(_ username: String, _ password: String) {
        let request = RestRequest(method: .get, url: "http://vps414215.ovh.net:3000/api/user/login")
        request.credentials = .basicAuthentication(username: username, password: password)
        request.responseString { result in
            switch result {
            case .success(let response):
                print("Successfully logged in")
            case .failure(let error):
                if let response = error.response {
                    print("Log in failed | status : \(response.status).")
                }
            }
        }
    }
}


