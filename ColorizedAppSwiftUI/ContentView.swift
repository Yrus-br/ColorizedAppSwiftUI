//
//  ContentView.swift
//  ColorizedAppSwiftUI
//
//  Created by Jorgen Shiller on 13.12.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redColor: Double = 155
    @State private var greenColor: Double = 30
    @State private var blueColor: Double = 50
    
    var body: some View {
        VStack(spacing: 30) {
            
            ColorViewUI(red: redColor, green: greenColor, blue: blueColor)
            
            VStack {
                SliderView(value: $redColor, color: .red)
                SliderView(value: $greenColor, color: .green)
                SliderView(value: $blueColor, color: .blue)
            }
            
            Spacer()
            
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
