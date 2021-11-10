//
//  DataManager.swift
//  ContactApp
//
//  Created by Test on 11/10/21.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    let contactNames: [String] = ["John", "Jane", "Mary", "Ted","Liz"]
    let contactSurnames: [String] = ["Doe", "Smith", "Johnson", "Williams", "Brown"]
    let contactNumbers: [String] = ["2378906", "1489120", "3386251",
                                    "5648513", "4172541"]
    let emails: [String] = ["abc@mail.ru","goodmail@mail.ru",
                            "maybe@mail.ru", "cute@mail.ru", "morning@mail.ru"]
}

