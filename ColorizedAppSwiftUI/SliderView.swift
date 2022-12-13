//
//  SliderView.swift
//  ColorizedAppSwiftUI
//
//  Created by Jorgen Shiller on 13.12.2022.
//
import SwiftUI

struct SliderView: View {
    
    @Binding var colorValue: Double
    @State private var alert = false
    let sliderSelfColor: Color
    
    var body: some View {
        HStack {
            Text("\(lround(colorValue))")
                .foregroundColor(.black)
            
            Slider(value: $colorValue, in: 0...255, step: 1)
                .accentColor(sliderSelfColor)
            
            HStack {
                TextField(
                    "0",
                    value: $colorValue,
                    format: .number
                )
                .textFieldStyle(.roundedBorder)
                .frame(width: 50)
                .keyboardType(.numberPad)
                
                Button("Done", action: checkValue)
                    .alert("Wrong Format", isPresented: $alert, actions: {}) {
                        Text("Please try again")
                    }
            }
            
        }.padding()
    }
    
    private func checkValue() {
        
        if colorValue > 255 {
            colorValue = 255
            alert.toggle()
        }
        
        if colorValue < 0 {
            colorValue = 0
            alert.toggle()
        }
    }
}
