//
//  ContentView.swift
//  ColorizedAppSwiftUI
//
//  Created by Jorgen Shiller on 13.12.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redColor = Double.random(in: 0...255).rounded()
    @State private var greenColor = Double.random(in: 0...255).rounded()
    @State private var blueColor = Double.random(in: 0...255).rounded()
    
    @FocusState private var isInputActive: Bool
    
    var body: some View {
        VStack(spacing: 30) {
            
            ColorViewUI(red: redColor, green: greenColor, blue: blueColor)
            
            VStack {
                SliderView(value: $redColor, color: .red)
                SliderView(value: $greenColor, color: .green)
                SliderView(value: $blueColor, color: .blue)
            }
            .focused($isInputActive)
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    Button("Done") {
                        isInputActive = false
                    }
                }
            }
            
            Spacer()
        }
        .padding()
        .onTapGesture {
            isInputActive = false
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

