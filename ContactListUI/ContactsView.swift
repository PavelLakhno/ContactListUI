//
//  ContactsView.swift
//  ContactListUI
//
//  Created by user on 23.12.2022.
//

import SwiftUI

struct ContactsView: View {
    let persons = Person.getPersonList()
    
    var body: some View {
        NavigationView {
            VStack {
                List(persons, id: \.self) { person in
                    NavigationLink(destination: UserContactView(person: person)) {
                        Text(person.fullName)
                    }
                }
                .listStyle(.plain)
                .navigationTitle("Contact List")

            }
        }
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView()
    }
}
