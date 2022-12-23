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
        Image(systemName: "person.circle")
            .resizable()
            .frame(width: 120, height: 120)
        Text("\(person.firstName)")
        Text("\(person.lastName)")
        Text("\(person.email)")
        Text("\(person.phoneNumber)")
    }
}

struct UserContactView_Previews: PreviewProvider {
    static var previews: some View {
        UserContactView(person: Person(
            firstName: "",
            lastName: "",
            email: "",
            phoneNumber: "")
        )
    }
}
