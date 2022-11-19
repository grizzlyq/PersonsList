//
//  MainViewController.swift
//  PersonsList
//
//  Created by Дмитрий on 19.11.2022.
//

import UIKit

class MainViewController: UITableViewController {
    
    var persons: [Person] = Person.getUserInfo()
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let person = persons[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        content.image = UIImage(systemName: "phone.circle")
        cell.contentConfiguration = content
        
        return cell
    }
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let indexPath = tableView.indexPathForSelectedRow {
            let detailVC = segue.destination as? DetailsViewController
            detailVC?.person = persons[indexPath.row]
            
            
        }
    }
}

