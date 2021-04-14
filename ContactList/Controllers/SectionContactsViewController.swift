//
//  SectionContactsViewController.swift
//  ContactList
//
//  Created by Виталий Оранский on 13.04.2021.
//

import UIKit

class SectionContactsViewController: UITableViewController {
    
    //MARK: - Public Properties
    var contacts: [Person]!
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return contacts.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "\(contacts[section].fullName)"
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailCellTwo", for: indexPath)
        
        let contact = contacts[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.text = contact.phone
            content.image = UIImage(systemName: "phone.fill")
        } else {
            content.text = contact.email
            content.image = UIImage(systemName: "envelope.fill")
        }
        cell.backgroundColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)

        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {

    let header = view as! UITableViewHeaderFooterView
    header.textLabel?.textColor = .white
    header.tintColor = UIColor.blue
        header.textLabel?.font = UIFont(name: "Apple SD Gothic Neo Regular", size: 25)
    }

    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}
