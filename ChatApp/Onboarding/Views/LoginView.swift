//
//  LoginView.swift
//  Chat
//
//  Created by Pedro Thomas on 2/10/24.
//

import SwiftUI

struct LoginView: View {
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                OnboardingHeaderView(taskLabel: "Log In")
                    .padding([.top, .bottom])
                
                VStack(spacing: 15){
                    ReusableTextfield(textfield: $email, placeholder: "E-Mail Address", textfieldWidth: UIScreen.main.bounds.width / 1.2, isSecure: false)
                    ReusableTextfield(textfield: $password, textfieldWidth: UIScreen.main.bounds.width / 1.2, isSecure: true)

                    Button {
    //
                    } label: {
                        RoundedRectangle(cornerRadius: 8)
                        .frame(width: UIScreen.main.bounds.width / 1.2, height: 45)
                        .foregroundColor(.teal)
                        .overlay {Text("Log In").foregroundColor(Color(.systemGray6))}
                    }
                }

                Button("Forgot Password?") {
                    
                }
                .foregroundColor(.primary)
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.trailing, 30)
                .padding(.top, 5)
                
                Spacer()
                
                HStack {
                    Text("New Here?")
                    
                    NavigationLink {
                        RegisterView()
                            .navigationBarBackButtonHidden()
                    } label: {
                        Text("Create Account")
                            .fontWeight(.bold)
                            .foregroundColor(.teal)
                }
                }

            } 
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView().preferredColorScheme(.dark)
    }
}
