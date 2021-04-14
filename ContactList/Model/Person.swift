//
//  Person.swift
//  ContactList
//
//  Created by Виталий Оранский on 12.04.2021.
//

import Foundation

struct Person {
    
    let name: String
    let ferstName: String
    let email: String
    let phone: String
    var fullName: String {
        "\(name) \(ferstName)"
    }
    
    static func createUniquePersonas(dataManager: DataManager) -> [Person] {
        var persons = [Person]()
        
        var names = dataManager.names.shuffled()
        var familys = dataManager.familys.shuffled()
        var emails = dataManager.emails.shuffled()
        var phones = dataManager.phones.shuffled()
        
        for _ in 1...10 {
            persons.append(Person(name: names.removeFirst(),
                                  ferstName: familys.removeFirst(),
                                  email: emails.removeFirst(),
                                  phone: phones.removeFirst()))
        }
        
        
        return persons
    }
}
