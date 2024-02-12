//
//  ContactCellView.swift
//  Chat
//
//  Created by Pedro Thomas on 2/12/24.
//

import SwiftUI

struct ContactCellView: View {
    var body: some View {
        HStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 35, height: 35)
                .foregroundColor(.gray)
            
            Text("James Howlett")
            
            Spacer()
        }
        .padding(.leading, 5)
    }
}

struct ContactCellView_Previews: PreviewProvider {
    static var previews: some View {
        ContactCellView()
    }
}
