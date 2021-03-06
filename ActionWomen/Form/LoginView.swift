//
//  LoginView.swift
//  ActionWomen
//
//  Created by user164558 on 3/19/20.
//  Copyright © 2020 popo. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    @State var email: String = ""
    @State var pwd: String = ""
    var body: some View {
        VStack {
            Text("Connectez vous à votre compte")
            TextField("E-mail", text: $email)
            SecureField("Password", text: $pwd)
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Login")
                    .foregroundColor(.black)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
