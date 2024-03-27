//
//  ContentView.swift
//  animatedText
//
//  Created by student on 3/12/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var rotation: Double = 0
    @State private var input: String = "Welcome"
    @State private var colorIndex = 0
    
    var colors: [Color] = [.black, .red, .green, .blue]
    var colorNames = ["Black", "Red", "Green", "Blue"]
    
    var body: some View {
        VStack {
            Text(input)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .rotationEffect(.degrees(rotation))
                .animation(.easeInOut(duration: 5))
                .foregroundColor(colors[colorIndex])
            Slider(value: $rotation, in: 0...360, step: 0.1)
            TextField("Enter text here:", text: $input)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Picker(selection: $colorIndex, label: Text("Color")) {
                ForEach (0 ..< colorNames.count) {color in
                    Text(colorNames[color])
                        .foregroundColor(colors[color])
                }
            } // .pickerStyle(.wheel)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
