//
//  ZStackUserInteractionView.swift
//  UserInteractions
//
//  Created by Shah Md Imran Hossain on 5/11/23.
//

import SwiftUI

struct ZStackUserInteractionView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.green)
                .frame(width: 300, height: 300)
                .onTapGesture {
                    print("Rectange Tapped")
                }
            
            Circle()
                .fill(.red)
                .frame(width: 300, height: 300)
                // content shape makes a content's tappable area
                // here, Although it is a circle,
                // it will have rectangle tapped area.
                // below rectangle will not be tapped if this modifier activated
                .contentShape(Rectangle())
                .onTapGesture {
                    print("Circle Tapped")
                }
                // this will deactivate Circle tap event
//                .allowsTightening(false)
        }
    }
}

#Preview {
    ZStackUserInteractionView()
}
