//
//  LargeInputView.swift
//  ActionWomen
//
//  Created by user164558 on 3/17/20.
//  Copyright © 2020 popo. All rights reserved.
//

import SwiftUI

struct LargeInputView: View {
    var body: some View {
        VStack {
            TextField("Description", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
        }
    }
}

struct LargeInputView_Previews: PreviewProvider {
    static var previews: some View {
        LargeInputView()
    }
}
