//
//  ListRemark.swift
//  ActionWomen
//
//  Created by user164558 on 4/1/20.
//  Copyright © 2020 popo. All rights reserved.
//

import Foundation
import SwiftyRequest
import SwiftyJSON


struct ListRemark {
    
    
    
    
    
    static func fetchAll(_ completion: @escaping ([Remark])->Void) -> [Remark]{

        let request = RestRequest(method: .get, url: "http://vps414215.ovh.net:3000/api/remark/?number=6")
        var array : [Remark] = []
        request.responseData() { (result : Result<RestResponse<Data>, RestError>) in
            switch result {
            case .success(let response):
                
                let test = response.body
                
                
                array = parseJSON(data: test)
                completion(array)
            case .failure(let error):
                
                if let response = error.response {
                    print("Request failed | status : \(response.status).")
                }
                if let responseData = error.responseData {
                    print(responseData.base64EncodedData())
                }
            }
            
        }
        
        return array
    }
    static func parseJSON(data: Data) -> [Remark] {
        do{
            let remarks = try JSONDecoder().decode([Remark].self, from: data)

            return remarks
            
        } catch { print("Error took place \(error).")}
        return []
    }
}
