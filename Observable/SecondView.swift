//
//  SecondView.swift
//  Observable
//
//  Created by student on 3/14/24.
//

import SwiftUI

struct SecondView: View {
    @EnvironmentObject var timerData : TimerData
    
    var body: some View {
        VStack {
            Text ("Second view")
                .font(.largeTitle)
            Text("Tier Count = \(timerData.timeCount)")
                .font(.headline)
        }
        .padding()
    }
}

#Preview {
    SecondView().environmentObject(TimerData())
}
