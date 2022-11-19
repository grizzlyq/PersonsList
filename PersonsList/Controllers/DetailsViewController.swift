//
//  DetailsViewController.swift
//  PersonsList
//
//  Created by Дмитрий on 20.11.2022.
//

import UIKit

class DetailsViewController: UIViewController {
    
    
    @IBOutlet weak var phoneNumber: UILabel!
    @IBOutlet weak var eMail: UILabel!
    
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = person.fullName
        eMail.text = "Email: \(person.email)"
        phoneNumber.text = "Phone: \(person.phoneNumber)"
        
        
    }
}
