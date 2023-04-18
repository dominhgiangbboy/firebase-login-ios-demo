//
//  TodoItemEntity.swift
//  LoginPageFirebaseTests
//
//  Created by Giangdm on 18/04/2023.
//

import XCTest
@testable import LoginPageFirebase

final class TodoItemEntityTest: XCTestCase {

    func testTodoItemEntityInit(){
        let todoItem: TodoItemEntity = TodoItemEntity(id: "id", name: "name", description: "description", userID: "userID", isDone: false)
        XCTAssertEqual(todoItem.id, "id");
        XCTAssertEqual(todoItem.name, "name");
        XCTAssertEqual(todoItem.description, "description");
        XCTAssertEqual(todoItem.userID, "userID");
        XCTAssertEqual(todoItem.isDone, false);
    }
    
    func testTodoItemEntityJsonDecode(){
        let json = """
        {
            "id": "id",
            "name": "name",
            "description": "description",
            "userID": "userID",
            "isDone": false
        }
        """.data(using: .utf8)!
        let todoItem = try! JSONDecoder().decode(TodoItemEntity.self, from: json)
        XCTAssertEqual(todoItem.id, "id");
        XCTAssertEqual(todoItem.name, "name");
        XCTAssertEqual(todoItem.description, "description");
        XCTAssertEqual(todoItem.userID, "userID");
        XCTAssertEqual(todoItem.isDone, false);
    }

}
