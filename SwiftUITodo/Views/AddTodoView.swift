//
//  AddTodoView.swift
//  SwiftUITodo
//
//  Created by Kaori Persson on 2022-08-10.
//

import SwiftUI

struct AddTodoView: View {
    // MARK: - Properties
    
    @State private var name: String = ""
    @State private var priority: String = "Normal"
    
    let priorities = ["High", "Normal", "Low"]
    
    // MARK: - Body
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    // MARK: - Todo name
                    TextField("Todo", text: $name)
                    
                    // MARK: - Todo Prioirity
                    Picker("Priority", selection: $priority) {
                        ForEach(priorities, id: \.self) {
                            Text($0)
                        }
                    }
                }
                
                Spacer()
            } //: Vstack
            .navigationTitle("New Todo")
            .navigationBarTitleDisplayMode(.inline)
        }  //: Navigation
    }
}

// MARK: - Preview
struct AddTodoView_Previews: PreviewProvider {
    static var previews: some View {
        AddTodoView()
    }
}
