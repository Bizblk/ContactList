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
    
    static func createUniquePersonas(dataManager: DataManager) -> [Person] {
        var persons = [Person]()
        
        var names = dataManager.names
        var familys = dataManager.familys
        var emails = dataManager.emails
        var phones = dataManager.phones
        
        for _ in 1...10 {
            persons.append(Person(name: names.shuffled().first ?? "n",
                                  ferstName: familys.shuffled().first ?? "f",
                                  email: emails.shuffled().first ?? "e",
                                  phone: phones.shuffled().first ?? "p"))
            names.removeFirst()
            familys.removeFirst()
            emails.removeFirst()
            phones.removeFirst()
        }
        
        
        return persons
    }
}
