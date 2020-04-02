//
//  RemarkListItem.swift
//  ActionWomen
//
//  Created by user164558 on 3/2/20.
//  Copyright © 2020 popo. All rights reserved.
//

import SwiftUI


struct RemarkListItem: View {
    var remark : Remark
//    @ViewBuilder
    var body: some View {
        VStack {
            Group {
                HStack {
                    
                    Text(verbatim: "Remarque n°\(self.remark.id)")
                        .font(.title)
                    
                    Spacer()
                    
                    Image(systemName: "star.fill")
//                        .font(Font.system(.title))
                    
                }
            }
            
//            Group {
//                HStack {
//                    VStack {
//                        Text("Posted by ")
//                            .font(.subheadline)
//                            .foregroundColor(Color.gray)
//                        Text(verbatim: "\(remark.user.username)")
//                    }
//                    Spacer()
//                    
//                }
//                .padding([.bottom])
//                
//            }
            
            Group {
                HStack {
                    ForEach(remark.tags, id: \.self) { tag in
                        RemarkTag(tag : tag)
                        
                    }
                    Spacer()
                }
                .padding([.bottom])
                
                HStack{
                    /**
                     TODO : CONTENT IN JSON
                     */
                    Text(remark.content)
                        .font(.body)
                    Spacer()
                }
            }
            
            Group {
                HStack {
                    Text("Réponses")
                    Text("\(remark.responses.count)")
                        .foregroundColor(Color.blue)
                    Spacer()
                    Text("Proposer une réponse")
                    Image(systemName: "message")
                    Spacer()
                    Image(systemName: "ellipsis")
                        .imageScale(.large)
                }
                
            }
        }
        .padding([.top, .bottom])
        
    }
}


struct RemarkListItem_Previews: PreviewProvider {
    static var previews: some View {
        RemarkListItem(remark: Remark(user: User(userId: "idtest", username: "Pépito", password: "mdp", email: "test@test.test", __v: 0), tags: [], _id: "idtest", content: "Le test fonctionne", likes: [], responses: [], id: 1, __v: 0))
    }
}
