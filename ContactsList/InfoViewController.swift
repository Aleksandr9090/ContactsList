//
//  InfoViewController.swift
//  ContactsList
//
//  Created by Aleksandr on 13.10.2022.
//

import UIKit

class InfoViewController: UIViewController {
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var contact: Contact!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = contact.fullName
        phoneLabel.text = "Phone: \(contact.phone)"
        emailLabel.text = "Email: \(contact.email)"
    }
  
}
