//
//  DetailContactsView.swift
//  ContactListUI
//
//  Created by user on 23.12.2022.
//

import SwiftUI

struct DetailContactsView: View {
    let persons = Person.getPersonList()
    
    var body: some View {
        NavigationView {
            VStack {
                
                List(persons, id: \.self) { person in
                    Section(header: Text("\(person.fullName)")) {
                        HStack {
                            Image(systemName: "tray.fill")
                                .foregroundColor(.blue)
                            Text(person.email)
                        }
                        
                        HStack {
                            Image(systemName: "phone.fill")
                                .foregroundColor(.blue)
                            Text(person.phoneNumber)
                        }
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
        DetailContactsView()
    }
}
