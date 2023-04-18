//
//  TodoListEntity.swift
//  LoginPageFirebase
//
//  Created by Giangdm on 18/04/2023.
//

import Foundation


struct TodoListEntity: Response {
    let id:String
    let date:String
    let userID:String
    let todoListData:[TodoItemEntity]
    init(id: String, date: String, userID: String, todoListData:[TodoItemEntity]) {
        self.id = id
        self.date = date
        self.userID = userID
        self.todoListData = todoListData
    }
/*========== Copilot Suggestion 1/2
       ^title:String
*///======== End of Copilot Suggestion
}

