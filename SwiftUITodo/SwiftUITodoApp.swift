//
//  SwiftUITodoApp.swift
//  SwiftUITodo
//
//  Created by Kaori Persson on 2022-08-10.
//

import SwiftUI

@main
struct SwiftUITodoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
