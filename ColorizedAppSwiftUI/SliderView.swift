//
//  SliderView.swift
//  ColorizedAppSwiftUI
//
//  Created by Jorgen Shiller on 13.12.2022.
//
import SwiftUI

struct SliderView: View {
    
    @Binding var colorValue: Double
    let sliderSelfColor: Color
    
    var body: some View {
        HStack {
            Text("\(lround(colorValue))")
                .foregroundColor(.black)
            
            Slider(value: $colorValue, in: 0...255, step: 1)
                .accentColor(sliderSelfColor)
            
            TextField("0", value: $colorValue, format: .number)
                .textFieldStyle(.roundedBorder)
                .frame(width: 50)
        }.padding()
    }
}
