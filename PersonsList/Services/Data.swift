//
//  Data.swift
//  PersonsList
//
//  Created by Дмитрий on 22.11.2022.
//

import Foundation

class DataStore {
    
    static let shared = DataStore()
        
   
    private init() {}
    
    var allFirstNames = [
        "James", "Pobert", "John",
        "Michael", "William", "Richard",
        "Thomas", "Daniel", "Mark", "David"
    ]
    var allSecondNames = [
        "Dow", "Penny", "Jow",
        "Robertson", "Smith", "Black",
        "Butler", "Adams", "Wilson", "Walker"
    ]
    var allPhoneNumbers = [
        "+112323", "+29128323", "+31456",
        "+4293234", "+51567990", "+64596456",
        "+74593456", "+84596456", "+94596456", "+04596456"
    ]
    var allEmails = [
        "qewe1@gmail.com", "qeasdf2@gmail.com", "zxcvasdf3@gmail.com",
        "qwpeo4@gmail.com", "dsfpgj5@gmail.com", "lkcsmvf6@gmail.com",
        "poijh7@gmail.com", "qsdcdv8@gmail.com", "urfghvn9@gmail.com", "uoiuhgfcs0@gmail.com"
    ]
}
