//
//  ToggleChildView.swift
//  SwiftUI PropertyWrapper
//
//  Created by Adwait Barkale on 12/02/24.
//

import SwiftUI

struct ToggleChildView: View {
    
    @Binding var isON: Bool
    @State var text: String = "Title"
    
    var body: some View {
        Toggle(isOn: $isON, label: {
            Text(String(text))
        }).fixedSize()
    }
}

#Preview {
    ToggleChildView(isON: .constant(false))
}
