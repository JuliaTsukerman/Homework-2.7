//
//  ContactsViewController.swift
//  ContactApp
//
//  Created by Test on 11/9/21.
//

import UIKit

class ContactsViewController: UITableViewController {

    let persons = Person.getPersonList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        let person = persons[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person.name + " " + person.surname
        cell.contentConfiguration = content
        
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let indexPath = tableView.indexPathForSelectedRow else {return}
        guard let infoVC = segue.destination as? InfoViewController else {return}
        infoVC.person = persons[indexPath.row]
    }
}
