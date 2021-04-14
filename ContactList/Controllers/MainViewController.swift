//
//  MainViewController.swift
//  ContactList
//
//  Created by Виталий Оранский on 14.04.2021.
//

import UIKit

class MainViewController: UITabBarController {
    
    //MARK: - Private Properties
    private var contacts = Person.createUniquePersonas(dataManager: DataManager())
    
    //MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        sendData()
    }
    
    //MARK: - Private Methods
    private func sendData() {
        guard let viewControllers = self.viewControllers else { return }
        for viewController in viewControllers {
            if let navigationVC = viewController as? UINavigationController {
                let contactVC = navigationVC.topViewController as! ContactsViewController
                contactVC.contacts = contacts
            } else if let sectionVC = viewController as? SectionContactsViewController {
                sectionVC.contacts = contacts
            }
        }
    }
    
}
