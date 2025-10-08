//
//  ContentView.swift
//  iExpense
//
//  Created by carlosgalvankamey on 10/6/25.
//

import SwiftUI

struct User {
    var firstName: String
    var lastName: String
}

struct ContentView: View {
    @State private var user = User(firstName: "", lastName: "")
    var body: some View {
        VStack {
            Text("Welcome \(user.firstName) \(user.lastName)")
                .font(.largeTitle)
                .fontWeight(.bold)
            Spacer()
            TextField("First name", text: $user.firstName)
            TextField("Last name", text: $user.lastName)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
