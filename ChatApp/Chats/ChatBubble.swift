//
//  ChatCell.swift
//  Chat
//
//  Created by Pedro Thomas on 2/12/24.
//

import SwiftUI

struct ChatBubble: View {
    let textIsMe: Bool
    
    var body: some View {
        HStack {
            if textIsMe {
                Spacer()
                Text("I sent this text 🤣I sent this text 🤣I sent this text 🤣I sent this text 🤣")
                    .modifier(chatBubbleModifiers(bubbleColor: .teal, textColor: .black))
            } else {
                Text("I received this message 😂 I received this message 😂 I received this message 😂")
                    .modifier(chatBubbleModifiers(bubbleColor: Color(.systemGray5), textColor: .primary))
                Spacer()
            }
        }
        .padding(.horizontal, 5)
    }
}

struct ChatCell_Previews: PreviewProvider {
    static var previews: some View {
        ChatBubble(textIsMe: false).preferredColorScheme(.dark)
    }
}

struct chatBubbleModifiers: ViewModifier {
    @State var bubbleColor: Color
    @State var textColor: Color
    
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding()
            .background(bubbleColor)
            .foregroundColor(textColor)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .frame(maxWidth: UIScreen.main.bounds.width / 1.4, alignment: .leading)
    }
}
