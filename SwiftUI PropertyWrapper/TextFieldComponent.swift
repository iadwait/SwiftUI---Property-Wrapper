//
//  TextFieldComponent.swift
//  SwiftUI PropertyWrapper
//
//  Created by Adwait Barkale on 21/02/24.
//

import SwiftUI

struct TextFieldComponent: View {
    
    @Binding var text: String
    
    var body: some View {
        Text("Enter your name")
            .frame(maxWidth: .infinity, alignment: .leading)
            .offset(x: 10)
        TextField(" Name", text: $text)
            .cornerRadius(8)
            .frame(height: 35)
            .border(Color.black)
            .padding(.init(top: 0, leading: 10, bottom: 0, trailing: 10))
    }
}

#Preview {
    TextFieldComponent(text: .constant(""))
}
