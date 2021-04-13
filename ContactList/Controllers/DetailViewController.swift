//
//  DetailViewController.swift
//  ContactList
//
//  Created by Виталий Оранский on 13.04.2021.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var phoneLable: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var contact: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = contact.fullName
        phoneLable.text = "Phone: \(contact.phone)"
        emailLabel.text = "Email: \(contact.email)"

    }
}
