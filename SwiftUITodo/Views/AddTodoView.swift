//
//  AddTodoView.swift
//  SwiftUITodo
//
//  Created by Kaori Persson on 2022-08-10.
//

import SwiftUI

struct AddTodoView: View {
    // MARK: - Properties
    
    @Environment(\.presentationMode) var presentationMode
    
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
                    .pickerStyle(SegmentedPickerStyle())
                    
                    // MARK: - Save button
                    Button(action: {
                        print("Save a new todo item")
                    }, label: {
                        Text("Save")
                        
                    })
                }
                
                Spacer()
            } //: Vstack
            .navigationTitle("New Todo")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar(content: {
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                })
            })
        }  //: Navigation
    }
}

// MARK: - Preview
struct AddTodoView_Previews: PreviewProvider {
    static var previews: some View {
        AddTodoView()
    }
}
