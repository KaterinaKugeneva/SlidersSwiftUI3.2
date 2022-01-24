//
//  ColorSliders.swift
//  SlidersSwiftUI3.2
//
//  Created by Ekaterina Kugeneva on 24.01.2022.
//

import Foundation
import SwiftUI

struct ColorSliderView: View {
    @Binding var value: Double
    let sliderColor: Color
    
    var body: some View {
        HStack {
            Text("0")
            Slider(value: $value, in: 0...255, step: 1)
                .accentColor(sliderColor)
            TextField("255", value: $value, formatter: NumberFormatter() )
                .textFieldStyle(.roundedBorder)
                .frame(width: 45)
                .keyboardType(.decimalPad)
                
            
        }
    }
}
