//
//  ContentView.swift
//  TrafficLightApp
//
//  Created by Grigory Don on 10.12.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var opacityAttributeRed = 0.3
    @State private var opacityAttributeYellow = 0.3
    @State private var opacityAttributeGreen = 0.3
    @State private var buttonName = "START"
    @State private var tempLigth: Color = .red
    
    var body: some View {
        VStack {
            Circle()
                .frame(width: 140, height: 140)
                .foregroundColor(.red)
                .opacity(opacityAttributeRed)
                .overlay(
                    Circle()
                        .stroke(lineWidth: 3)
                )
            Circle()
                .frame(width: 140, height: 140)
                .foregroundColor(.yellow)
                .opacity(opacityAttributeYellow)
                .overlay(
                    Circle()
                        .stroke(lineWidth: 3)
                )
            Circle()
                .frame(width: 140, height: 140)
                .foregroundColor(.green)
                .opacity(opacityAttributeGreen)
                .overlay(
                    Circle()
                        .stroke(lineWidth: 3)
                )
            Spacer()
            Button(action: buttonPressed){
                Text(buttonName)
                    .font(.title)
            }
        }
        .padding()
    }
    
    private func buttonPressed() {
        buttonName = "NEXT"
        switch tempLigth {
        case .red:
            opacityAttributeRed = 1
            opacityAttributeGreen = 0.3
            tempLigth = .yellow
        case .yellow:
            opacityAttributeYellow = 1
            opacityAttributeRed = 0.3
            tempLigth = .green
        default:
            opacityAttributeGreen = 1
            opacityAttributeYellow = 0.3
            tempLigth = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
