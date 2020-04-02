//
//  PostRemarkView.swift
//  ActionWomen
//
//  Created by user164558 on 3/17/20.
//  Copyright © 2020 popo. All rights reserved.
//

import SwiftUI

struct PostRemarkView: View {
    @State var title: String = ""
    @State var desc: String = ""
    @State var tags: String = ""
    var body: some View {
        VStack {
            Text("Postez votre remarque")
            TextField("Titre de votre remarque", text: $title)
            LargeInputView()
            TextField("Tags", text: $tags)
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Poster")
                    .foregroundColor(.black)
            }
        }
        
    }
}

struct PostRemarkView_Previews: PreviewProvider {
    static var previews: some View {
        PostRemarkView()
    }
}
