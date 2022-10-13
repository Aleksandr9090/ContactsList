//
//  Contact.swift
//  ContactsList
//
//  Created by Aleksandr on 13.10.2022.
//

import Foundation

struct Contact {
    
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getRandomContacts() -> [Contact] {
   
        let names = Array(DataManager.shared.namesSet)
        let surnames = Array(DataManager.shared.surnamesSet)
        let phones = Array(DataManager.shared.phonesSet)
        let emails = Array(DataManager.shared.emailsSet)
        
        var contacts: [Contact] = []
        
        let iterationCount = min(names.count, surnames.count, phones.count, emails.count)
        
        for contact in 1...iterationCount {
            contacts.append(
                Contact(
                    name: names[contact - 1],
                    surname: surnames[contact - 1],
                    phone: phones[contact - 1],
                    email: emails[contact - 1 ]
                )
            )
        }
        return contacts
    }
}



