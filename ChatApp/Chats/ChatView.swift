//
//  ChatView.swift
//  Chat
//
//  Created by Pedro Thomas on 2/12/24.
//

import SwiftUI

struct ChatView: View {
    @State private var message = ""
    
    var body: some View {
        VStack {
            ChatHeaderView()
            
            ScrollView {
                ForEach(1..<20, id: \.self) { _ in
                    ChatBubble(textIsMe: Bool.random())
                }
            }
            
            HStack {
                ReusableTextfield(textfield: $message, textfieldWidth: UIScreen.main.bounds.width / 1.2, isSecure: false)

                Button {
                    //
                } label: {
                    Text("Send")
                        .padding(.trailing, 5)
                        .foregroundColor(.teal)
                }

            }
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView().preferredColorScheme(.dark)
    }
}

