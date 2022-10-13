//
//  DetailContactsViewController.swift
//  ContactsList
//
//  Created by Aleksandr on 13.10.2022.
//

import UIKit

class DetailContactsViewController: UITableViewController {
        
    var contacts: [Contact] = Contact.getRandomContacts()

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        contacts.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        contacts[section].fullName
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailContact", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let contact = contacts[indexPath.section]
        
        switch indexPath.row {
        case 0:
            content.text = contact.phone
            content.image = UIImage(systemName: "iphone.radiowaves.left.and.right")
            
        default:
            content.text = contact.email
            content.image = UIImage(systemName: "mail.fill")
        }
        
        cell.contentConfiguration = content
        return cell

    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}


