//
//  ContentView.swift
//  ActionWomen
//
//  Created by user164558 on 3/2/20.
//  Copyright © 2020 popo. All rights reserved.
//

import SwiftUI
import SwiftyRequest

/*
 Main page of ActionWomen
 Contains :
    - a post bar
    - a carousel of frequent remarks
    - a list of recent remarks
    - an access menu at the bottom
 */

struct ContentView: View {
    @State var test : [Remark] = []
    private var listR : [Remark] {return ListRemark.fetchAll({result in
        print(result)})}
    
    var body: some View {
        
        VStack {
            VStack{
                Text("ActionWomen")
                    .font(.title)
                    .fontWeight(.bold)
                    .edgesIgnoringSafeArea(.top)
            }
            .padding()
            NavigationView{
                VStack{
                    NavigationLink(destination : PostRemarkView()){
                        PostPublicationBar()
                    }
                }
            }
            
            VStack {
                /**
                 CAROUSEL
                 */
                HomePageCarousel(remarks:
                    [SimplifiedRemarkView(id:"1"),
                     SimplifiedRemarkView(id:"2"),
                     SimplifiedRemarkView(id:"3")]
                )
                /**
                 NAVIGATION
                 */
                /*
                RemarkList(recent:
                    [RemarkListItem(id: "1"),
                    RemarkListItem(id: "2"),
                    RemarkListItem(id: "3")]
                 )*/
                if listR.count>0 {
                RemarkList(listR: listR)
                }
            }
            
            Spacer()
            Divider()
            HStack {
                NavigationMenu()
                    .padding([.leading, .top, .trailing])
                    .edgesIgnoringSafeArea(.bottom)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
