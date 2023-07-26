//
//  GameView.swift
//  TicTacGameSwiftUIMVVMFirebase
//
//  Created by MEI on 27.07.2023.
//

import SwiftUI

struct GameView: View {
    let mode: GameMode
    
    @ViewBuilder
    private func closeButton() -> some View {
        HStack {
            Spacer()
            Button {
                
            } label: {
                Text(AppStrings.exit)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(.red)
                
            }
            .frame(width: 80, height: 40)
            .background(RoundedRectangle(cornerRadius: 10).fill(.white))
            
        }
        .padding(.bottom, 20)
    }
    
    @ViewBuilder
    private func main() -> some View {
        VStack {
            closeButton()
            Spacer()
        }
        .padding(.horizontal, 16)
    }
    
    var body: some View {
        main()
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView(mode: GameMode.online)
    }
}
