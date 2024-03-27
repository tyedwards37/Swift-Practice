//
//  ContentView.swift
//  Observable
//
//  Created by student on 3/14/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var timerData : TimerData = TimerData()
    var body: some View {
        NavigationView {
            VStack {
                Text("Timer Count = \(timerData.timeCount)")
                Button (action: resetCount) {
                    Text("Reset")
                }
                NavigationLink (destination: SecondView()) {
                    Text ("Go to Second View")
                }
                .padding()
            }
        }
        
        .environmentObject(timerData)
        .padding()
    }
    
    func resetCount() {
        timerData.resetCount()
    }
}

#Preview {
    ContentView()
}
