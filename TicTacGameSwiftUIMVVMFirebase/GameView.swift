//
//  GameView.swift
//  TicTacGameSwiftUIMVVMFirebase
//
//  Created by MEI on 27.07.2023.
//

import SwiftUI

struct GameView: View {
    let mode: GameMode
    
    var body: some View {
        Text("Hello, Game! \(mode.name)")
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView(mode: GameMode.online)
    }
}
