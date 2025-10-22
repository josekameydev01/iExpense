//
//  ContentView.swift
//  iExpense
//
//  Created by carlosgalvankamey on 10/6/25.
//

import SwiftUI

@Observable
class User {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    init() {
        self.firstName = ""
        self.lastName = ""
    }
}

struct SecondView: View {
    @Environment(\.dismiss) var dismiss
    
    let name: String
    let lastName: String
    
    var body: some View {
        Spacer()
        Group {
            Text("Welcome")
            Text("\(name) \(lastName)")
        }
        .font(.largeTitle)
        .fontWeight(.bold)
        
        Button("Dismiss") {
            dismiss()
        }
        .buttonStyle(.borderedProminent)
        Spacer()
    }
}

struct ContentView: View {
    @State private var user = User()
    @State private var showingSheet = false
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
            
            Button("Show Sheet") {
                if !user.firstName.isEmpty && !user.lastName.isEmpty {
                    showingSheet.toggle()
                }
            }
            .buttonStyle(.borderedProminent)
            
            Spacer()
            
        }
        .frame(maxHeight: .infinity)
        .sheet(isPresented: $showingSheet) {
            SecondView(name: user.firstName, lastName: user.lastName)
        }
    }
}

#Preview {
    ContentView()
}
