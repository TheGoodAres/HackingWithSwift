//
//  ContentView.swift
//  Challenge_19_HackingWithSwift
//
//  Created by Robert-Dumitru Oprea on 14/02/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var input = 0.0
    private var units = [UnitVolume.milliliters, UnitVolume.liters, UnitVolume.pints, UnitVolume.gallons]
    @State private var unitFrom: UnitVolume = .milliliters
    @State private var unitTo: UnitVolume = .milliliters
    @FocusState private var inputFocused: Bool
    @State private var output = 0.0
    var body: some View {
        NavigationView {
            Form {
                Section {
                    HStack {
                        Text("Input Value:")
                        TextField("Input Value", value: $input, format: .number)
                            .focused($inputFocused)
                            .keyboardType(.decimalPad)
                            
                    }
                    
                } header: {
                    Text("Input value")
                }
                Section {
                    Picker("Select input unit", selection: $unitFrom) {
                        ForEach(units, id: \.self) { unit in
                            Text(unit.symbol)
                        }
                    }
                    Picker("Select output unit", selection: $unitTo) {
                        ForEach(units, id: \.self) { unit in
                            Text(unit.symbol)
                        }
                    }
                } header: {
                    Text("Unit picker")
                }
                
                Section
                {
                    Text("The output is \(String(format:"%.2f",output))")
                    Button("Calculate") {
                        output = convert(value: input, from: unitFrom, to: unitTo)
                    }
                } header: {
                    Text("Output")
                }
            }
            .navigationBarTitleDisplayMode(.inline)
                .navigationTitle("Converter")
                
                .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    Button("Done") {
                        inputFocused = false
                    }
                }
            }

        }

    }
    func convert(value:Double, from unitFrom: UnitVolume, to unitTo: UnitVolume) -> Double{
        let unitFrom = Measurement(value: value, unit: unitFrom)
        return unitFrom.converted(to: unitTo).value
    }

}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
