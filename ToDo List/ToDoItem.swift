//
//  ToDoItem.swift
//  ToDo List
//
//  Created by John Gallaugher on 2/5/20.
//  Copyright © 2020 John Gallaugher. All rights reserved.
//

import Foundation

struct ToDoItem: Codable {
    var name: String
    var date: Date
    var notes: String
    var reminderSet: Bool
    var notificationID: String?
    var completed: Bool
}
