//
//  ContentView.swift
//  WeSplit
//
//  Created by Thais Souza on 02/12/24.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 10
    @FocusState private var amountIsFocused: Bool
    
    let tipPercentages = [10, 20, 25, 0]
    
    var grandTotal: Double {
        let tipSelection = Double(tipPercentage)
        let tipValue = checkAmount / 100 * tipSelection
        let grandTotal = checkAmount + tipValue
        
        return grandTotal
    }
        
    var totalPerPerson: Double {
        let peopleCount = Double(numberOfPeople + 2)
        let amountPerPerson = grandTotal / peopleCount
        
        return amountPerPerson
    }
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
                    
                    Picker("Number Of People", selection: $numberOfPeople){
                        ForEach(2..<100){
                            Text("\($0) people")
                        }
                    }
                    .pickerStyle(.navigationLink)
                }
                
                Section("How much do you want to tip?") {
                    
                    Picker("Tip percentage", selection: $tipPercentage){
                        ForEach(0..<101) {
                            Text($0, format: .percent)
                        }
                        
                    }
                    .pickerStyle(.navigationLink)
                }

                Section("Amount total") {
                    Text(grandTotal, format: .currency(code:  Locale.current.currency?.identifier ?? "USD"))
                        .foregroundStyle(tipPercentage == 0 ? .red : .black)
                }
                Section("Amount per person") {
                    Text(totalPerPerson, format: .currency(code:  Locale.current.currency?.identifier ?? "USD"))
                }
                .navigationTitle("WeSplit")
                .toolbar {
                    if amountIsFocused{
                        Button("Done") {
                            amountIsFocused = false
                        }
                    }
                }
            }
        }
    }
    
}

#Preview {
    ContentView()
}
