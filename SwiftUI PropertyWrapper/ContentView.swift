//
//  ContentView.swift
//  SwiftUI PropertyWrapper
//
//  Created by Adwait Barkale on 12/02/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isON: Bool = false
    @State private var tflVal: String = ""
    
    var body: some View {
        Text("Property Wrapper")
            .font(.title)
        
        Text("Middle Text")
            .offset(x: 100, y: 100)
        
        GeometryReader {_ in
            ScrollView {
                //Spacer()
                VStack {
                    VStack {
                        Text("Property Wrappers").font(.title).foregroundColor(isON ? .blue : .gray).padding(.bottom, 8)
                        
                        Text("Color of Property Wrapper will change once reusable child component Toogle View is tapped and it is binded to isON State property of parent view. ").font(.title3).multilineTextAlignment(.center)
                        
                        ToggleChildView(isON: $isON, text: "Toggle Button")
                        
                        HStack {
                            Button(action: {
                                print("Accept Button Tapped")
                            }, label: {
                                Text("Accept")
                            })
                            .frame(width: 100, height: 35, alignment: .center)
                            .background(.link)
                            .foregroundColor(.white)
                            
                            Button(action: {
                                print("Decline Button Tapped")
                            }, label: {
                                Text("Decline")
                            })
                            .frame(width: 100, height: 35, alignment: .center)
                            .background(.gray)
                            .foregroundColor(.white)
                        }
                    }
                    .padding()
                    .padding(.top, 20)
                    .padding(.bottom, 20)
                    .background(Gradient(colors: [.teal, .cyan, .green]).opacity(0.6))
                    .cornerRadius(20)
                    .frame(maxHeight: .infinity, alignment: .center)
                    
                    
                    //                    List {
                    ForEach(0..<5) {_ in
//                        Text("Enter your name")
//                            .frame(maxWidth: .infinity, alignment: .leading)
//                            .offset(x: 10)
//                        TextField(" Name", text: $tflVal)
//                            .cornerRadius(8)
//                            .frame(height: 35)
//                            .border(Color.black)
//                            .padding(.init(top: 0, leading: 10, bottom: 0, trailing: 10))
                        TextFieldComponent(text: $tflVal)
                    }
                    
                    Color.orange
                        .cornerRadius(20)
                        .offset(y: 30)
                        .padding(.init(top: -20, leading: 10, bottom: 20, trailing: 10))
                        .frame(height: 200)
                }
            }
            .offset(x: 0, y: 100)
            .padding(.bottom, 100)
        }
    }
}

#Preview {
    ContentView()
}
