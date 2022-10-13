//
//  DataManager.swift
//  ContactsList
//
//  Created by Aleksandr on 13.10.2022.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    let namesSet: Set = [
        "Sharon", "Steven", "Allan", "Aaron",
        "John", "Tim", "Ted", "Bruce", "Carl", "Jack"
    ]
    let surnamesSet: Set = [
        "Robertson", "Smith", "Pennyworth", "Dow","Black",
        "Isaacson", "Williams", "Murphy", "Butler", "Jackson"
    ]
    let phonesSet: Set = [
        "1111111", "2222222", "3333333", "4444444", "5555555",
        "6666666", "7777777", "8888888", "9999999", "0000000"
    ]
    let emailsSet: Set = [
        "aaaaa@mail.ru", "bbbbb@mail.ru", "ccccc@mail.ru", "ddddd@mail.ru",
        "eeeee@mail.ru", "fffff@mail.ru", "ggggg@mail.ru", "hhhhh@mail.ru",
        "iiiii@mail.ru", "jjjjj@mail.ru"
    ]
    
    private init() {}
}








