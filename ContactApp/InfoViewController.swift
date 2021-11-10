//
//  InfoViewController.swift
//  ContactApp
//
//  Created by Test on 11/10/21.
//

import UIKit

class InfoViewController: UIViewController {

    var person: Person!
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()

        title = person.name + " " + person.surname
        phoneLabel.text = "Phone: \(person.number)"
        emailLabel.text = "Email: \(person.email)"
    }
    

    

}
