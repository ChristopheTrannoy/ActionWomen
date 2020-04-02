//
//  RemarkDetail.swift
//  ActionWomen
//
//  Created by user164558 on 3/3/20.
//  Copyright © 2020 popo. All rights reserved.
//

import SwiftUI

struct RemarkDetail: View {
    var remark : Remark
    var responses: [ResponseView]
    var body: some View {
        VStack {
            RemarkListItem(remark: remark)
                .padding()
            NavigationView {
                List(responses) { response in
                    response
                }
                .navigationBarTitle(
                    Text("")
                )
                .navigationBarHidden(true)
            }
        }
    }
}

struct RemarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        RemarkDetail(remark: Remark(user: User(userId: "idtest", username: "Pépito", password: "mdp", email: "test@test.test", __v: 0), tags: [], _id: "idtest", content: "Le test fonctionne", likes: [], responses: [], id: 1, __v: 0), responses: [])
    }
}
