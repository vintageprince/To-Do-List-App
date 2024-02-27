//
//  TLButtonView.swift
//  ToDoList
//
//  Created by Даниил Заканавский on 27.02.2024.
//

import SwiftUI

struct TLButtonView: View {
    
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        })
    }
}

#Preview {
    TLButtonView(title: "Title", background: .pink) {
        // Action
    }
}
