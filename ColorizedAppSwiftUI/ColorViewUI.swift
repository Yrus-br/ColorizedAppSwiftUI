//
//  ColorViewUI.swift
//  ColorizedAppSwiftUI
//
//  Created by Jorgen Shiller on 13.12.2022.
//

import SwiftUI

struct ColorViewUI: View {
    
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        Rectangle()
            .foregroundColor(Color(red: red / 255, green: green / 255, blue: blue / 255))
            .frame(width: 300, height: 150)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.black, lineWidth: 5))
    }
}
