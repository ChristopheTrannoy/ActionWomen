//
//  ListRemark.swift
//  ActionWomen
//
//  Created by user164558 on 4/1/20.
//  Copyright © 2020 popo. All rights reserved.
//

import Foundation
import SwiftyRequest

struct ListRemark {
  
    
//    var remarks : [Remark]
    
    //static func fetchAll() -> Data{
//        var list : ListRemark = ListRemark(remarks: [Remark(user: User(userId: "idtest", username: "Pépito", password: "mdp", email: "test@test.test", __v: 0), tags: [], _id: "idtest", content: "Le test fonctionne", likes: [], responses: [], id: 1, __v: 0)])
//        var data : Data = Data()
//
//        let request = RestRequest(method: .get, url: "http://vps414215.ovh.net:3000/api/remark")
//
//        request.responseData() { (result : Result<RestResponse<Data>, RestError>) in
//            switch result {
//            case .success(let response):
//
//                data = response.body
//
//
//            case .failure(let error):
//
//                if let response = error.response {
//                    print("Request failed | status : \(response.status).")
//                }
//                if let responseData = error.responseData {
//                    print(responseData.base64EncodedData())
//                }
//            }
//
//        }
//        return data
//        let url = URL(string: "http://vps414215.ovh.net:3001/api/remark/?number=5")
//        guard let requestUrl = url else { fatalError()}
//
//        var request = URLRequest(url: requestUrl)
//        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
//
//        request.httpMethod = "GET"
//        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
//            guard let dataResponse = data, error == nil else {
//                    print(error?.localizedDescription ?? "Response Error")
//                    return
//            }
//            do {
//                let jsonResponse = try JSONSerialization.jsonObject(with: dataResponse, options: [])
//                print(jsonResponse)
//            }
//            catch let parsingError {
//                print("Error", parsingError)
//            }
//        }
//        task.resume()
//    }
//
    
    static func fetchAll(listR : inout [Remark]) {

            let request = RestRequest(method: .get, url: "http://vps414215.ovh.net:3000/api/remark/?number=6")
    
        request.responseArray() { (result : Result<RestResponse<[Any]>, RestError>) in
                switch result {
                case .success(let response):
    
                    let test = response.body
                    do{
                        for json in test {
                            var remark = parseJSON(data: json as! Data)
                            listR.append(remark)
                        }
                    }
                    
    
                case .failure(let error):
    
                    if let response = error.response {
                        print("Request failed | status : \(response.status).")
                    }
                    if let responseData = error.responseData {
                        print(responseData.base64EncodedData())
                    }
                }
    
            }
      

        }
    static func parseJSON(data: Data) -> Remark {
            var returnValue: Remark = Remark()
        do{
            let decoder = JSONDecoder()
            let model = try decoder.decode(Remark.self, from: data)
            print(model)
                returnValue = try JSONDecoder().decode(Remark.self, from: data)
            } catch { print("Error took place \(error.localizedDescription).")}
            return returnValue
        }
}
