//
//  ContentView.swift
//  SlidersSwiftUI3.2
//
//  Created by Ekaterina Kugeneva on 24.01.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var sliderValueRed = Double.random(in: 0...255)
    @State private var sliderValueGreen = Double.random(in: 0...255)
    @State private var sliderValueBlue = Double.random(in: 0...255)
    @FocusState var isInputActive: Bool
    
    
    var body: some View {
        VStack(spacing: 30) {
            
            Rectangle()
                .frame(width: 380, height: 200)
                .foregroundColor(Color(red: sliderValueRed/255, green: sliderValueGreen/255, blue: sliderValueBlue/255))
                .overlay(Rectangle().stroke(Color.black, lineWidth: 2))
            
            ColorSliderView(value: $sliderValueRed, sliderColor: .red)
            ColorSliderView(value: $sliderValueGreen, sliderColor: .green)
            ColorSliderView(value: $sliderValueBlue, sliderColor: .blue)
            
            
        }.focused($isInputActive)
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Button("Done") {
                        isInputActive = false
                        if Int(sliderValueRed) > 255  {sliderValueRed = 255 }
                        if Int(sliderValueGreen) > 255  {sliderValueGreen = 255 }
                        if Int(sliderValueBlue) > 255  {sliderValueBlue = 255 }
                        
                    }
                }
            }
            .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

