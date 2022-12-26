//
//  UserContactView.swift
//  ContactListUI
//
//  Created by user on 23.12.2022.
//

import SwiftUI

struct UserContactView: View {
    let person: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 120, height: 120)
                Spacer()
            }.padding()
            
            DetailRowView(image: "tray.fill", info: person.email)
            DetailRowView(image: "phone.fill", info: person.phoneNumber)
        }
        .listStyle(.insetGrouped)
        .navigationTitle(person.fullName)
    }
}

struct UserContactView_Previews: PreviewProvider {
    static var previews: some View {
        UserContactView(person: Person.getPersonList().first!)
    }
}
