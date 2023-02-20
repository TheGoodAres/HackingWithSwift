//
//  ContentView.swift
//  Challenge_19_HackingWithSwift
//
//  Created by Robert-Dumitru Oprea on 14/02/2023.
//

import SwiftUI

struct ContentView: View {
    //input that needs to be converted
    @State private var input = 0.0
    //units from and to
    @State private var unitFrom: Dimension = UnitVolume.milliliters
    @State private var unitTo: Dimension = UnitVolume.milliliters
    //used to close the keyboard
    @FocusState private var inputFocused: Bool

    let conversions = ["Distance", "mass", "Temperature", "Time"]

    let unitTypes = [
        [UnitLength.meters, UnitLength.kilometers, UnitLength.feet, UnitLength.yards, UnitLength.miles],
        [UnitMass.grams, UnitMass.kilograms, UnitMass.ounces, UnitMass.pounds],
        [UnitTemperature.celsius, UnitTemperature.fahrenheit, UnitTemperature.kelvin],
        [UnitDuration.hours, UnitDuration.minutes, UnitDuration.seconds]
    ]
    //selected option index from conversions array above
    @State private var selectedUnits = 0

    let formatter: MeasurementFormatter
    init() {
        formatter = MeasurementFormatter()
        formatter.unitOptions = .providedUnit
        formatter.unitStyle = .long
    }
    //whenever output is called, it updates itself with the calculated conversion
    var output: String {
        let unitFrom = Measurement(value: input, unit: unitFrom)
        let unitTo = unitFrom.converted(to: unitTo)
        return formatter.string(from: unitTo)
    }

    var body: some View {
        NavigationView {

            Form {
                //section for the inputs
                Section {

                    HStack {
                        Text("Input Value:")
                        TextField("Input Value", value: $input, format: .number)
                            .focused($inputFocused)
                            .keyboardType(.decimalPad)
                    }
                    Picker("Conversion", selection: $selectedUnits) {
                        ForEach(0..<unitTypes.count) {
                            Text(conversions[$0])
                        }
                    }
                } header: {
                    Text("Input value")
                }
//goes through the units available
                Section {
                    Picker("Select input unit", selection: $unitFrom) {
                        ForEach(unitTypes[selectedUnits], id: \.self) { unit in
                            Text(unit.symbol)
                        }
                    }
                    Picker("Select output unit", selection: $unitTo) {
                        ForEach(unitTypes[selectedUnits], id: \.self) { unit in
                            Text(unit.symbol)
                        }
                    }
                } header: {
                    Text("Unit picker")
                }

                Section
                {
                    Text("The output is \(output)")
                } header: {
                    Text("Output")
                }
            }
            //the next 2 lines set the title of the form and make it stay at the top center of the screen
                .navigationBarTitleDisplayMode(.inline)
                .navigationTitle("Converter")
//used to add a button to the keyboard to toggle it
                .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    Button("Done") {
                        inputFocused = false
                    }
                }
            }
            //whenever the selected category of units changes, the units to and from update as well to a pre-defined pick
                .onChange(of: selectedUnits) { newSelection in
                    let units = unitTypes[newSelection]
                    unitFrom = units[0]
                    unitTo = units[1]
                }

        }

    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
