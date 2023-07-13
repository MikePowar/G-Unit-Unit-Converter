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
2. Then Users will enter a value
3. Program will show users an output of the conversion.

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
    
    
    
    var body: some View {
        VStack {
            NavigationView {
                Form {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                    Text("Hello, 0.50!")
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
