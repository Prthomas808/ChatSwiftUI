//
//  OnboardingHeaderView.swift
//  Chat
//
//  Created by Pedro Thomas on 2/12/24.
//

import SwiftUI

struct OnboardingHeaderView: View {
    
    @State var taskLabel: String
    
    var body: some View {
        VStack {
            Image(systemName: "bubble.right")
                .resizable()
                .scaledToFit()
                .frame(width: 125, height: 125)
                .foregroundColor(.teal)
            
            Text(taskLabel)
                .font(.system(size: 18).bold())
                .padding(.bottom, 5)
            
            Text("Enter Your Information Below")
                .font(.system(size: 15))
                .fontWeight(.light)
        }
    }
}

struct OnboardingHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingHeaderView(taskLabel: "Task Label")
    }
}
