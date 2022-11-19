//
//  aaa.swift
//  PersonsList
//
//  Created by Дмитрий on 19.11.2022.
//

import Foundation

struct Person {
    let firstName: String
    let secondName: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(firstName) \(secondName)"
    }
}


extension Person {
    static func getUserInfo() -> [Person] {
        
        var users: [Person] = []
        
        let firstNames = DataStore.shared.allFirstNames.shuffled()
        let secondNames = DataStore.shared.allSecondNames.shuffled()
        let emails = DataStore.shared.allEmails.shuffled()
        let phoneNumbers = DataStore.shared.allPhoneNumbers.shuffled()
     
        for index in 0..<firstNames.count {
            let user = Person(
                firstName: firstNames[index],
                secondName: secondNames[index],
                phoneNumber: phoneNumbers[index],
                email: emails[index]
            )
            users.append(user)
        }
        return users
    }
}




