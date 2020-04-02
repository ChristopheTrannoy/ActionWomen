//
//  RemarkModel.swift
//  ActionWomen
//
//  Created by user164558 on 3/25/20.
//  Copyright © 2020 popo. All rights reserved.
//

import Foundation
import SwiftyRequest

struct Remark : Identifiable, Codable{
    
    let user: User
    let tags: [String]
    let _id : String
    let content : String
    let likes : [Like]
    let responses : [Response]
    let id : Int
    let __v : Int
    
    //Get all remarks
    //
    static func fetchRemark(_ id: Int) -> Remark {
        var remark : Remark = Remark(user: User(userId: "idtest", username: "Pépito", password: "mdp", email: "test@test.test", __v: 0), tags: [], _id: "idtest", content: "Le test fonctionne", likes: [], responses: [], id: 1, __v: 0)
        let request = RestRequest(method: .get, url:"http://vps414215.ovh.net:3000/api/remark/{id}")
        request.responseObject(templateParams: ["id" : "\(id)"]) { (result: Result<RestResponse<Remark>, RestError>) in
            switch result {
            case .success(let response):
                //callback
                remark = response.body
                print(remark)
            case .failure(let error):
                if let response = error.response {
                    print("Request failed | status : \(response.status).")
                }
            }
        }
        return remark
    }
    
    init(user: User, tags: [String], _id: String, content: String, likes: [Like], responses: [Response], id: Int, __v: Int){
        self.user = user
        self.tags = tags
        self._id = _id
        self.content = content
        self.likes = likes
        self.responses = responses
        self.id = id
        self.__v = __v
    }
    
    init(){
        
    }
    
    
    
}
