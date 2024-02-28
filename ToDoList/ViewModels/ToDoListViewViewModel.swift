//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Даниил Заканавский on 26.02.2024.
//

import FirebaseFirestore
import Foundation

/// ViewModel for list of items view
///  Primary tab
class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    
    /// Delete to do list item
    /// - Parameter id: Item id to delete
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
