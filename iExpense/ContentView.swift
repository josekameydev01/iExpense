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
            
            VStack(alignment: .leading,spacing: 12){
                Group {
                    Text("First Name")
                        .font(.callout)
                        .foregroundStyle(.gray)
                    TextField("Enter your first name", text: $user.firstName)
                        .textFieldStyle(.roundedBorder)
                }
                
                Group {
                    Text("Last Name")
                        .font(.callout)
                        .foregroundStyle(.gray)
                    TextField("Enter your last name", text: $user.lastName)
                        .textFieldStyle(.roundedBorder)
                }
            }
            .padding()
            
            Spacer()
            
            VStack(spacing: 10) {
                Text("First name: \(user.firstName)")
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("Last name: \(user.lastName)")
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding()
            Spacer()
            
        }
        .frame(maxHeight: .infinity)
    }
}

#Preview {
    ContentView()
}
