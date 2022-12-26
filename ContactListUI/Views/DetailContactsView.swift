//
//  DetailContactsView.swift
//  ContactListUI
//
//  Created by user on 23.12.2022.
//

import SwiftUI

struct DetailContactsView: View {
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            VStack {
                List(persons, id: \.self) { person in
                    Section(header: Text(person.fullName)) {
                        DetailRowView(image: "tray.fill", info: person.email)
                        DetailRowView(image: "phone.fill", info: person.phoneNumber)
                    }
                }
                .listStyle(.insetGrouped)
                .navigationTitle("Contact List")
            }
        }
    }
}

struct DetailContactsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailContactsView(persons: Person.getPersonList())
    }
}
