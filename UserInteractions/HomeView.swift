//
//  HomeView.swift
//  UserInteractions
//
//  Created by Shah Md Imran Hossain on 5/11/23.
//

import SwiftUI

struct HomeView: View {
    @State private var index = 0
    
    let viewTitle = [
        "ZStackUserInteractionView"
    ]
    
    let viewList: [AnyView] = [
        AnyView(ZStackUserInteractionView())
    ]
    
    var body: some View {
        VStack {
            Text(viewTitle[index])
            Spacer()
            
            viewList[index]
            
            Spacer()
            
            HStack {
                if index != 0 {
                    Button("Previous") {
                        if index > 0 {
                            index = index - 1
                        }
                    }
                }
                
                
                Spacer()
                
                if index != viewList.count - 1 {
                    Button("Next") {
                        if index < viewList.count - 1 {
                            index = index + 1
                        }
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    HomeView()
}
