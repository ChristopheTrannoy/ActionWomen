//
//  NavigationMenu.swift
//  ActionWomen
//
//  Created by user164558 on 3/3/20.
//  Copyright © 2020 popo. All rights reserved.
//

import SwiftUI

struct NavigationMenu: View {
    var body: some View {
        HStack {
            Group {
                
                Button(action: {}) {
                    Image(systemName: "house")
                }
                Spacer()
                Button(action: {}) {
                    Image(systemName: "star")
                }
                Spacer()
                Button(action: {}) {
                    Image(systemName: "square.and.pencil")
                }
                Spacer()
                Button(action: {}) {
                    Image(systemName: "magnifyingglass")
                }
                Spacer()
                Button(action: {}) {
                     Image(systemName: "person")
                }
            }
            .font(Font.system(.title))
            .foregroundColor(Color.black)
        }
    }
}

struct NavigationMenu_Previews: PreviewProvider {
    static var previews: some View {
        NavigationMenu()
    }
}
