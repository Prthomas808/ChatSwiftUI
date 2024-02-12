//
//  ReusableTextfield.swift
//  Chat
//
//  Created by Pedro Thomas on 2/12/24.
//

import SwiftUI

struct ReusableTextfield: View {
    @Binding var textfield: String
    @State var placeholder: String = ""
    @State var textfieldWidth: CGFloat
    @State var isSecure: Bool
    
    var body: some View {
        RoundedRectangle(cornerRadius: 8)
            .frame(width: textfieldWidth, height: 45)
            .foregroundColor(Color(.systemGray6))
            .overlay {
                if isSecure {
                    SecureField("Password", text: $textfield)
                        .padding(.leading, 10)
                } else {
                    TextField(placeholder, text: $textfield)
                        .padding(.leading, 10)
                }
            }
    }
}
