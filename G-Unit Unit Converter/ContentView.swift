//
//  ContentView.swift
//  G-Unit Unit Converter
//
//  Created by Mike Powar on 2023-07-07.
//

//DAY 19 Hacking with SwiftUI


/*
Challenge:
1. Users will select an input unit and an output unit
 // TODO: create Pickers x 2 - input & output unit respectively
2. Then Users will enter a value
 // TODO: create TextField to hold input Value
3. Program will show users an output of the conversion.
 // TODO: create Text - to display conversion result

 TIP: So, rather than writing code to convert from liters to milliliters, and from liters to cups, and from liters to pints, and so on, a better idea is to convert the user’s input into milliliters (the lowest common denominator), then convert from there to whatever output unit they want.
 
 - Unit Conversions: convert user input to single base input (LCD)
- 3 user values = 3 @State properties
UI:
 - TextField
 - 2 pickers
 - text view for output
 
 Conversions:
 - store conversion units via String Array
   that you loop over
 
 */


//V1: Lenth Conversion:

import SwiftUI

struct ContentView: View {
    @State var userInput = 0
    @State var pickerInput = 0
    @State var pickerOutput = 0
    @State var conversionUnit = "cm"
    
    let conversionUnits = ["mm", "cm", "m"]
    
    var body: some View {
        VStack {
            NavigationView {
                Form {
                    Section {
                        TextField("Input", value: $pickerInput, format: .number)
                        Picker("Input Unit", selection: $conversionUnit) {
                            ForEach(conversionUnits, id: \.self) {
                                Text($0)
                            }
                        }
                        .pickerStyle(.segmented)
                    } header: {
                        Text("What do you want to convert ?")
                    }
                    
                    Section {
                        Text("Output")
                    }
                }
                .navigationTitle("G-unit's Units")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
