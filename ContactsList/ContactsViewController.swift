//
//  ContactsViewController.swift
//  ContactsList
//
//  Created by Aleksandr on 13.10.2022.
//

import UIKit

class ContactsViewController: UITableViewController {
    
    var contacts: [Contact] = Contact.getRandomContacts()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        content.text = contacts[indexPath.row].fullName
        content.image = UIImage.init(systemName: "person.circle.fill")
        cell.contentConfiguration = content
        return cell
    }
   
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let infoVC = segue.destination as? InfoViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        infoVC.contact = contacts[indexPath.row]
    }
}
