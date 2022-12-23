//
//  ContentView.swift
//  ContactListUI
//
//  Created by user on 23.12.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ContactsView()
                .tabItem {
                    Image(systemName: "airplane")
                    Text("Home")
                }
            DetailContactsView()
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Profile")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
