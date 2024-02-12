//
//  InboxRowView.swift
//  Chat
//
//  Created by Pedro Thomas on 2/12/24.
//

import SwiftUI

struct InboxRowView: View {
    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60)
                .foregroundColor(.gray)
            
            VStack(alignment: .leading, spacing: 5) {
                Text("Full Name")
                    .font(.subheadline)
                
                Text("This is a sample message and holds no weight")
                    .font(.subheadline)
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                    .lineLimit(2)
                    .frame(maxWidth: UIScreen.main.bounds.width - 100, alignment: .leading)
            }
            
            HStack {
                Text("Yesterday")
                Image(systemName: "chevron.right")
            }
            .font(.caption2)
            .foregroundColor(.gray)
        }
        .padding(.leading, -15)
        .frame(height: 72)
    }
}

struct ChatsRowView_Previews: PreviewProvider {
    static var previews: some View {
        InboxRowView()
    }
}
