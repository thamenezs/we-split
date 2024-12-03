//
//  ContentView.swift
//  WeSplit
//
//  Created by Thais Souza on 02/12/24.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    var body: some View {
        Form {
            TextField("Enter your name:", text: $name)
            Text("Your name is \(name)")
        }
    }
    
}

#Preview {
    ContentView()
}
