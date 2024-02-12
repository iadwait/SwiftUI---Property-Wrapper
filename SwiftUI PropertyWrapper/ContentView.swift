//
//  ContentView.swift
//  SwiftUI PropertyWrapper
//
//  Created by Adwait Barkale on 12/02/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isON: Bool = false
    
    var body: some View {
        VStack {
            Text("Property Wrappers").font(.title).foregroundColor(isON ? .blue : .gray).padding(.bottom, 8)
            
            Text("Color of Property Wrapper will change once reusable child component Toogle View is tapped and it is binded to isON State property of parent view. ").font(.title3).multilineTextAlignment(.center)
            
            ToggleChildView(isON: $isON, text: "Toggle Button")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
