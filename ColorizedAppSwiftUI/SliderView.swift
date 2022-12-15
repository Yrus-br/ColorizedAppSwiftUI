//
//  SliderView.swift
//  ColorizedAppSwiftUI
//
//  Created by Jorgen Shiller on 13.12.2022.
//
import SwiftUI

struct SliderView: View {
    
    @Binding var value: Double
    @State private var showAlert = false
    @State private var text = ""
    
    let color: Color
    
    var body: some View {
        HStack {
            Text(value.formatted())
                .frame(width: 35, alignment: .leading)
                .foregroundColor(.white)
            
            Slider(value: $value, in: 0...255, step: 1)
                .accentColor(color)
                .onChange(of: value) { newValue in
                    text = newValue.formatted()
                }
            
            TextFieldView(text: $text, value: $value, action: checkValue)
                .alert("Wrong Format", isPresented: $showAlert, actions: {}) {
                    Text("Please try again")
                }
        }
        .onAppear {
            text = value.formatted()
        }
    }
    
    private func checkValue() {
        if let value = Int(text), (0...255).contains(value) {
            self.value = Double(value)
            return
        }
        showAlert.toggle()
        value = 0
        text = "0"
    }
}
