//
//  HomePageCarousel.swift
//  ActionWomen
//
//  Created by user164558 on 3/2/20.
//  Copyright © 2020 popo. All rights reserved.
//

import SwiftUI

struct HomePageCarousel: View {
    var remarks: [SimplifiedRemarkView]
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(remarks) { remark in
                            remark
                    }
                }
            }
        }
    }
}

struct HomePageCarousel_Previews: PreviewProvider {
    static var previews: some View {
        HomePageCarousel(remarks:
            [SimplifiedRemarkView(id: "1"),
             SimplifiedRemarkView(id: "2"),
             SimplifiedRemarkView(id: "3")])
            .previewLayout(.fixed(width: 300, height:130))
    }
}
