//
//  ViewController.swift
//  PersonsList
//
//  Created by Дмитрий on 19.11.2022.
//

import UIKit

class AdditionalStatViewController: UITableViewController {
    
    var persons: [Person] = Person.getUserInfo()
    
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let person = persons[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            content.text = person.phoneNumber
            content.image = UIImage(systemName: "phone.circle")
            cell.contentConfiguration = content
        default:
            content.text = person.email
            content.image = UIImage(systemName: "mail.stack")
            cell.contentConfiguration = content
        }
        return cell
    }
}

