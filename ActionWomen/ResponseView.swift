//
//  ResponseView.swift
//  ActionWomen
//
//  Created by user164558 on 3/3/20.
//  Copyright © 2020 popo. All rights reserved.
//

import SwiftUI

struct ResponseView: View, Identifiable {
    var id: String
    var body: some View {
        VStack {
            HStack {
                Text("Réponse #")
                    .font(.title)
                Text(id)
                    .font(.title)
                Spacer()
                Image(systemName: "star.fill")
                    .imageScale(.large)
                    .foregroundColor(.yellow)
            }
            HStack{
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla aliquet mattis augue et scelerisque. Etiam ornare ex neque, non condimentum nunc bibendum vel. ")
                    .font(.body)
                Spacer()
            }
            .padding([.bottom])
            HStack {
                VStack {
                    Text("Posted by Pepito 2hrs ago")
                        .font(.subheadline)
                        .foregroundColor(Color.gray)
                }
                Spacer()
            }
        }
        .padding([.top, .bottom])
    }
}

struct ResponseView_Previews: PreviewProvider {
    static var previews: some View {
        ResponseView(id: "1")
    }
}
