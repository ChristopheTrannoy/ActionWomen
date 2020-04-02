//
//  RemarkTag.swift
//  ActionWomen
//
//  Created by user164558 on 3/3/20.
//  Copyright © 2020 popo. All rights reserved.
//

import SwiftUI

struct RemarkTag: View {
    var tag: String
    var body: some View {
        HStack {
            Group {
                Text(tag)
            }
            .font(.footnote)
        }
        .padding(5)
        .overlay(
            RoundedRectangle(cornerRadius: 5)
                .stroke(Color.gray, lineWidth:1)
            
        )
    }
}

struct RemarkTag_Previews: PreviewProvider {
    static var previews: some View {
        RemarkTag(tag : "%23test")
    }
}
