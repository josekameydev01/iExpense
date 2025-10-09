//
//  ContentView.swift
//  iExpense
//
//  Created by carlosgalvankamey on 10/6/25.
//

import SwiftUI
import Observation

@Observable
class User {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

struct ContentView: View {
    @State private var user = User(firstName: "", lastName: "")
    var body: some View {
        VStack {
            Text("iExpense")
                .font(.largeTitle)
                .fontWeight(.bold)
            Spacer()
            VStack {
                Section {
                    TextField("First name", text: $user.firstName)
                    TextField("Last name", text: $user.lastName)
                }
            }
            .padding()
            Spacer()
            Spacer()
            Spacer()
            if !user.firstName.isEmpty && !user.lastName.isEmpty {
                Text("Welcome \(user.firstName) \(user.lastName)")
            }
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
