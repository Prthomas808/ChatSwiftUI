//
//  NewChatView.swift
//  Chat
//
//  Created by Pedro Thomas on 2/12/24.
//

import SwiftUI

struct NewChatView: View {
    @State private var searchUser = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    ReusableTextfield(textfield: $searchUser, placeholder: "To:", textfieldWidth: UIScreen.main.bounds.width, isSecure: false)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.bottom)
                    
                    ForEach(1..<10, id: \.self) { _ in
                        ContactCellView()
                        Divider()
                    }
                }
            }
            .navigationTitle("New Message")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") { dismiss() }
                        .foregroundColor(.teal)
                }
        }
        }
    }
}

struct NewChatView_Previews: PreviewProvider {
    static var previews: some View {
        NewChatView().preferredColorScheme(.dark)
    }
}


