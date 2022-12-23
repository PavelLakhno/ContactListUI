//
//  UserInfo.swift
//  ContactListUI
//
//  Created by user on 23.12.2022.
//

import SwiftUI

struct Person: Hashable {
    
    //var id: ObjectIdentifier
        
    let firstName: String
    let lastName: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    static func getPersonList() -> [Person] {
        
        let dataManager = DataManager()
        var persons: [Person] = []
        
        let firstNames = dataManager.firstNames.shuffled()
        let lastNames = dataManager.lastNames.shuffled()
        let emails = dataManager.emails.shuffled()
        let phoneNumbers = dataManager.phoneNumbers.shuffled()
        
        let minValue = min(
            firstNames.count,
            lastNames.count,
            emails.count,
            phoneNumbers.count
        )
        
        for index in 0..<minValue {
            let person = Person(
                firstName: firstNames[index],
                lastName: lastNames[index],
                email: emails[index],
                phoneNumber: phoneNumbers[index]
            )
            persons.append(person)
        }
        
        return persons
    }
}
