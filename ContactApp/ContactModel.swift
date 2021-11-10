//
//  ContactModel.swift
//  ContactApp
//
//  Created by Test on 11/10/21.
//

struct Person {
    let name: String
    let surname: String
    let number: String
    let email: String
    
    static func getPersonList() ->[Person]{
        var persons: [Person] = []
        
        let names = DataManager.shared.contactNames.shuffled()
        let surnames = DataManager.shared.contactSurnames.shuffled()
        let numbers = DataManager.shared.contactNumbers.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        
        for index in 0 ..< names.count {
            let person = Person(name: names[index],
                                surname:surnames[index],
                                number: numbers[index],
                                email: emails[index])
            
            persons.append(person)
        }
        
        return persons
    }
}

