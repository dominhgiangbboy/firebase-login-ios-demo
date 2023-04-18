//
//  UserModel.swift
//  LoginPageFirebase
//
//  Created by Giangdm on 18/04/2023.
//

import Foundation

/// UserEntity Bussiness Entity
struct UserEntity: Response{
    var id: String
    var email: String
    var password: String
    var name: String
    init(id: String, email: String, password: String, name: String) {
        self.id = id
        self.email = email
        self.password = password
        self.name = name
    }
}
