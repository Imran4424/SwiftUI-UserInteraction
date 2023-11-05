//
//  SpaceTapView.swift
//  UserInteractions
//
//  Created by Shah Md Imran Hossain on 5/11/23.
//

import SwiftUI

struct SpaceTapView: View {
    var body: some View {
        VStack {
            Text("Hello")
            Spacer().frame(height: 100)
            Text("World")
        }
        .onTapGesture {
            // although, onTap in applied on whole VStack
            // Only "Hello" and "World" will response
            // Spacer() will not response since it's void
            print("VStack tapped")
        }
    }
}

#Preview {
    SpaceTapView()
}
