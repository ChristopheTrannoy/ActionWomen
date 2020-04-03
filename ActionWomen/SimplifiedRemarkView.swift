//
//  SimplifiedRemarkView.swift
//  ActionWomen
//
//  Created by user164558 on 3/2/20.
//  Copyright © 2020 popo. All rights reserved.
//

import SwiftUI

struct SimplifiedRemarkView: View, Identifiable {
    
    var id : Int
    var body: some View {
        
        VStack {
            HStack {
                Text("Remark #")
                    .font(.title)
                    .fontWeight(.bold)
                Text("\(id)")
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
                Image(systemName: "star.fill")
                    .imageScale(.large)
                    .foregroundColor(.yellow)
                
            }
            .padding([.bottom])
            HStack {
                Text("Posted by Pépito 2 hours ago")
                    .font(.body)
                Spacer()
            }
            .padding([.top])
        }

        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 15).stroke(Color.gray, lineWidth: 2)
        )
        .padding()
        
    }
}

struct SimplifiedRemarkView_Previews: PreviewProvider {
    static var previews: some View {
        SimplifiedRemarkView(id : 1)
    }
}
