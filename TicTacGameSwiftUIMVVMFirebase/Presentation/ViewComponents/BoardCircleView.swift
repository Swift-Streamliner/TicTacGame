//
//  BoardCircleView.swift
//  TicTacGameSwiftUIMVVMFirebase
//
//  Created by MEI on 03.08.2023.
//

import SwiftUI

struct BoardCircleView: View {
    
    var geometry: GeometryProxy
    
    @State var sizeDivider: CGFloat = 3
    @State var padding: CGFloat = 15
    
    var body: some View {
        Circle()
            .fill(.red)
            .frame(width: geometry.size.width / sizeDivider - padding, height: geometry.size.width / sizeDivider - padding)
        
    }
}

struct BoardCircleView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { geometry in
            BoardCircleView(geometry: geometry)
        }
    }
}
