//
//  ContentView.swift
//  ContactListUI
//
//  Created by user on 23.12.2022.
//

import SwiftUI

struct ContentView: View {
    let persons = Person.getPersonList()
    
    var body: some View {
        TabView {
            ContactsView(persons: persons)
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Contacts")
                }
            DetailContactsView(persons: persons)
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                    
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
