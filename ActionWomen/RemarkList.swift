//
//  RemarkList.swift
//  ActionWomen
//
//  Created by user164558 on 3/2/20.
//  Copyright © 2020 popo. All rights reserved.
//

import SwiftUI

struct RemarkList: View {
    var listR : [Remark]
    var body: some View {
        NavigationView {
            ForEach(listR) { remark in
                RemarkListItem(remark: remark)
            }
            .navigationBarTitle(
                Text("")
            )
            .navigationBarHidden(true)
        }
    }
}

struct RemarkList_Previews: PreviewProvider {
    static var previews: some View {
        RemarkList(listR: [])
    }
}
