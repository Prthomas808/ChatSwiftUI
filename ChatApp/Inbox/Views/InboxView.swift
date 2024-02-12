//
//  InboxView.swift
//  Chat
//
//  Created by Pedro Thomas on 2/12/24.
//

import SwiftUI

struct InboxView: View {
    @State var showNewChatView: Bool = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                List {
                    ForEach(1..<10, id: \.self) { _ in
                        InboxRowView()
                    }
                }
                .listStyle(.plain)
                .frame(height: UIScreen.main.bounds.height - 100)
            }
            .navigationTitle("Chats")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    InboxToolBarButton { showNewChatView.toggle() }
                }
            }
            .fullScreenCover(isPresented: $showNewChatView) { NewChatView() }
        }
    }
}

struct ChatsView_Previews: PreviewProvider {
    static var previews: some View {
        InboxView().preferredColorScheme(.dark)
    }
}

