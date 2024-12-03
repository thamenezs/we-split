//
//  ContentView.swift
//  WeSplit
//
//  Created by Thais Souza on 02/12/24.
//

import SwiftUI

struct ContentView: View {
    let statudents = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = "Harry"
    var body: some View {
        Form {
            Picker("Select your student", selection: $selectedStudent) {
                ForEach(statudents, id: \.self){
                    Text($0)
                }
            }
        }
        
    }
    
}

#Preview {
    ContentView()
}
