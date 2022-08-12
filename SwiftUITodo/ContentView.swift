//
//  ContentView.swift
//  SwiftUITodo
//
//  Created by Kaori Persson on 2022-08-12.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    @State private var showingAddTodoView: Bool = false
    // MARK: - Body
    
    var body: some View {
        NavigationView{
            List(0 ..< 5) { item in
                Text("Hello world")
            } //: List
            .navigationTitle("Todo")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing:
                                    Button(action: {
                self.showingAddTodoView.toggle()
            }) {
                Image(systemName: "plus")
                
            }
                .sheet(isPresented: $showingAddTodoView, content: {
                    AddTodoView()
                })
            )
            
        } //: Navigation view
        
    }
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
