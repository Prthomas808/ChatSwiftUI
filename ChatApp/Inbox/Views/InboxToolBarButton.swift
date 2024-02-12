//
//  InboxToolBarButton.swift
//  Chat
//
//  Created by Pedro Thomas on 2/12/24.
//

import SwiftUI

struct InboxToolBarButton: View {
    @State var buttonAction: () -> Void
    
    var body: some View {
        Button(action: buttonAction) {
            Image(systemName: "bubble.left.and.bubble.right")
                 .resizable()
                 .scaledToFit()
                 .frame(width: 30, height: 30)
                 .foregroundColor(.teal)
        }
        
    }
}
