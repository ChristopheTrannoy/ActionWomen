//
//  ResponseModel.swift
//  ActionWomen
//
//  Created by user164558 on 3/30/20.
//  Copyright © 2020 popo. All rights reserved.
//

import Foundation

struct Response : Codable{
    let user : User
    let likes : [Like]
    let _id : String
    let idResponse : Int
    let content : String
}
