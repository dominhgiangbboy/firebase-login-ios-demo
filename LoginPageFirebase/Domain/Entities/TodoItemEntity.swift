//
//  TodoItemEntity.swift
//  LoginPageFirebase
//
//  Created by Giangdm on 18/04/2023.
//

import Foundation


struct TodoItemEntity :Response {
    let id: String
    let name: String
    let description: String
    let userID: String
    let isDone: Bool
    init(id: String, name: String, description: String, userID: String, isDone: Bool) {
        self.id = id
        self.name = name
        self.description = description
        self.userID = userID
        self.isDone = isDone
    }
}
