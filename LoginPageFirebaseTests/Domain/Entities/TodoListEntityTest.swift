//
//  TodoListEntity.swift
//  LoginPageFirebaseTests
//
//  Created by Giangdm on 18/04/2023.
//

import XCTest
@testable import LoginPageFirebase
final class TodoListEntityTest: XCTestCase {

    func testInitTodoListEntity() {
        var todoListData: [TodoItemEntity] = []
        for index in 0..<10 {
            todoListData.append(TodoItemEntity(id: String(index), name: "name", description: "description", userID: "userID", isDone: false))
        }
        
        let todoListEntity: TodoListEntity = TodoListEntity(
            id: "id",
            date: "10-12-2023",
            userID: "userID",
            todoListData: todoListData
        )
        
        XCTAssertEqual(todoListEntity.id, "id")
        XCTAssertEqual(todoListEntity.userID, "userID")
        XCTAssertEqual(todoListEntity.date, "10-12-2023")
        XCTAssertEqual(todoListEntity.todoListData.first?.id, todoListData.first?.id)
        XCTAssertEqual(todoListEntity.todoListData.first?.name, todoListData.first?.name)
        XCTAssertEqual(todoListEntity.todoListData[2].description, todoListData[2].description)
    }

    func testDecoderTodoListEntity(){
        let json = """
        {
            "id": "id",
            "date": "10-12-2023",
            "userID": "userID",
            "todoListData": [
                {
                    "id": "0",
                    "name": "name",
                    "description": "description",
                    "userID": "userID",
                    "isDone": false
                },
                {
                    "id": "1",
                    "name": "name",
                    "description": "description",
                    "userID": "userID",
                    "isDone": false
                },
                {
                    "id": "2",
                    "name": "name",
                    "description": "description",
                    "userID": "userID",
                    "isDone": false
                }
            ]
        }
        """.data(using: .utf8)!
        
        let todoListEntity = try! JSONDecoder().decode(TodoListEntity.self, from: json)
        
        XCTAssertEqual(todoListEntity.id, "id")
        XCTAssertEqual(todoListEntity.userID, "userID")
        XCTAssertEqual(todoListEntity.date, "10-12-2023")
        XCTAssertEqual(todoListEntity.todoListData.first?.id, "0")
        XCTAssertEqual(todoListEntity.todoListData.first?.name, "name")
        XCTAssertEqual(todoListEntity.todoListData[2].description, "description")
    }
}
