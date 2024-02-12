//
//  ChatHeaderView.swift
//  Chat
//
//  Created by Pedro Thomas on 2/12/24.
//

import SwiftUI

struct ChatHeaderView: View {
    var body: some View {
        HStack {
            Button {
                //
            } label: {
                Image(systemName: "chevron.left")
                    .resizable()
                    .frame(width: 15, height: 15)
                    .foregroundColor(.teal)
            }
            .padding([.leading, .trailing])
            
            HStack {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35, height: 35)
                
                Text("Jean Grey")
            }
            
            Spacer()

        }
        .padding(.bottom)
        .background(.gray.opacity(0.2))
    }
}


struct ChatHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ChatHeaderView()
    }
}
