//
//  ContentView.swift
//  iExpense
//
//  Created by carlosgalvankamey on 10/6/25.
//

import SwiftUI

struct ContentView: View {
    @State private var tapCount = UserDefaults.standard.integer(forKey: "Tap")
    
    var body: some View {
        Text("Tap Count: \(tapCount)")
            .font(.largeTitle)
            .fontWeight(.bold)
        Button("Add") {
            tapCount += 1
            UserDefaults.standard.set(tapCount, forKey: "Tap")
        }
        .buttonStyle(.borderedProminent)
    }
}

#Preview {
    ContentView()
}
