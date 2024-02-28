//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Даниил Заканавский on 26.02.2024.
//

import Foundation

/// ViewModel for list of items view
///  Primary tab
class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    init() {}
}
