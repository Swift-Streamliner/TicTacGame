//
//  AppButtonStyle.swift
//  TicTacGameSwiftUIMVVMFirebase
//
//  Created by MEI on 26.07.2023.
//

import SwiftUI

struct AppButtonStyle : ButtonStyle {
    
    let color: Color
    
    init(color: Color) {
        self.color = color
    }
    
    func makeBody(configuration: Configuration) -> some View {
        
        configuration.label
            .frame(height: 40)
            .frame(maxWidth: .infinity)
            .font(.title2)
            .fontWeight(.semibold)
            .padding()
            .background(color)
            .foregroundColor(.white)
            .clipShape(Capsule())
            .opacity(configuration.isPressed ? 0.5 : 1.0)
            .shadow(radius: 8)
    }
}
