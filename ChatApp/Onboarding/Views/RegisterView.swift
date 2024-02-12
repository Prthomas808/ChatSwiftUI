//
//  RegisterView.swift
//  Chat
//
//  Created by Pedro Thomas on 2/11/24.
//

import SwiftUI

struct RegisterView: View {
    @State var firstName: String = ""
    @State var lastName: String = ""
    @State var email: String = ""
    @State var password: String = ""
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            OnboardingHeaderView(taskLabel: "Sign Up")
                .padding([.top, .bottom])
            
            VStack(spacing: 15){
                ReusableTextfield(textfield: $firstName, placeholder: "First Name", textfieldWidth: UIScreen.main.bounds.width / 1.2, isSecure: false)
                ReusableTextfield(textfield: $lastName, placeholder: "Last Name", textfieldWidth: UIScreen.main.bounds.width / 1.2, isSecure: false)
                ReusableTextfield(textfield: $email, placeholder: "E-Mail Address", textfieldWidth: UIScreen.main.bounds.width / 1.2, isSecure: false)
                ReusableTextfield(textfield: $password, textfieldWidth: UIScreen.main.bounds.width / 1.2, isSecure: true)
                
                Button {
                    //
                } label: {
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: UIScreen.main.bounds.width / 1.2, height: 45)
                        .foregroundColor(.teal)
                        .overlay {Text("Sign Up").foregroundColor(Color(.systemGray6))}
                }
            }
            
            Spacer()
            
            HStack {
                Text("Have An Account")
                
                Button {
                    dismiss()
                } label: {
                    Text("Log In")
                        .fontWeight(.bold)
                        .foregroundColor(.teal)
                }
                
            }
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView().preferredColorScheme(.dark)
    }
}
