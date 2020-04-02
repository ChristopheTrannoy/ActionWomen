//
//  PostPublicationBar.swift
//  ActionWomen
//
//  Created by user164558 on 3/3/20.
//  Copyright © 2020 popo. All rights reserved.
//

import SwiftUI

struct PostPublicationBar: View {
    var body: some View {
        HStack {
            Button(action: {}) {
                Image(systemName: "pencil.circle")
                    .font(Font.system(.title))
                    .padding([.trailing])
                Text("Poster une remarque...")
                    .font(.title)
                    .fontWeight(.light)
                    Spacer()
            }
            .padding()
            .foregroundColor(.black)
            .overlay(Rectangle().stroke(Color.gray, lineWidth: 0.5))
        }
    }
}

struct PostPublicationBar_Previews: PreviewProvider {
    static var previews: some View {
        PostPublicationBar()
    }
}
