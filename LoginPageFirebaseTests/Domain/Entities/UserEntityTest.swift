//
//  UserEntityTest.swift
//  LoginPageFirebaseTests
//
//  Created by Giangdm on 18/04/2023.
//

import XCTest
@testable import LoginPageFirebase
final class UserEntityTest: XCTestCase {

    func testUserEntity() {
        let user = UserEntity(id: "id", email: "email", password: "password", name: "name")
        XCTAssertEqual(user.id, "id")
        XCTAssertEqual(user.name, "name")
        XCTAssertEqual(user.email, "email")
        XCTAssertEqual(user.password, "password")
    }
    
    func testCodableUserFromJson() {
        let json = """
        {
            "id": "id",
            "email": "email",
            "password": "password",
            "name": "name"
        }
        """.data(using: .utf8)!
        let user = try! JSONDecoder().decode(UserEntity.self, from: json)
        XCTAssertEqual(user.id, "id")
        XCTAssertEqual(user.name, "name")
        XCTAssertEqual(user.email, "email")
        XCTAssertEqual(user.password, "password")
    }
    
}
