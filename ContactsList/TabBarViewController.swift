//
//  TabBarViewController.swift
//  ContactsList
//
//  Created by Aleksandr on 13.10.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        guard let contactsVC = viewControllers?.first as? ContactsViewController else { return }
        guard let detailContactsVC = viewControllers?.last as? DetailContactsViewController else { return }
        
        let contacts = Contact.getRandomContacts()
        contactsVC.contacts = contacts
        detailContactsVC.contacts = contacts
    }
    
}
