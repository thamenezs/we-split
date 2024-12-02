//
//  ContentView.swift
//  WeSplit
//
//  Created by Thais Souza on 02/12/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            Form{
                Section{
                    Text("Hello World!")
                }
                Section{
                    Text("Hello World!")
                    Text("Hello World!")
                    Text("Hello World!")
                }
                Text("Hello World!")
                Text("Hello World!")
                Text("Hello World!")
                Text("Hello World!")
                Text("Hello World!")
                Text("Hello World!")
                Text("Hello World!")
                Text("Hello World!")
            }
            .navigationTitle("SwiftUI")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
}

#Preview {
    ContentView()
}
