//
//  TextFieldView.swift
//  ColorizedAppSwiftUI
//
//  Created by Jorgen Shiller on 15.12.2022.
//

import SwiftUI

struct TextFieldView: View {
    @Binding var text: String
    @Binding var value: Double
    var action: () -> Void
    
    var body: some View {
        TextField("", text: $text) { _ in
            withAnimation {
                action()
            }
        }
        .frame(width: 55, alignment: .trailing)
        .multilineTextAlignment(.trailing)
        .textFieldStyle(.roundedBorder)
        .keyboardType(.decimalPad)
    }
}
