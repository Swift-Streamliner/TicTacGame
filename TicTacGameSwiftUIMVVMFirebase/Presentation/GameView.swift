//
//  GameView.swift
//  TicTacGameSwiftUIMVVMFirebase
//
//  Created by MEI on 27.07.2023.
//

import SwiftUI

struct GameView: View {
    @Environment(\.dismiss) var dismiss
    let mode: GameMode
    var viewModel = GameViewModel()
    
    @ViewBuilder
    private func closeButton() -> some View {
        HStack {
            Spacer()
            Button {
                dismiss()
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
    private func scoreView() -> some View {
        HStack {
            Text("Player 1: 0")
            Spacer()
            Text("Player 2: 0")
        }
        .background(.gray)
        .foregroundColor(.white)
        .font(.title2)
        .fontWeight(.semibold)
    }
    
    @ViewBuilder
    private func gameStatusView() -> some View {
        Text("Player 1's move")
            .font(.title2)
        
    }
    
    @ViewBuilder
    private func gameBoard(geometry: GeometryProxy) -> some View {
        VStack {
            LazyVGrid(columns: viewModel.colums, spacing: 10) {
                ForEach(0..<9) { index in
                    ZStack {
                        BoardCircleView(geometry: geometry)
                        Text("\(index)")
                    }
                }
                
            }
        }
        .padding(.bottom, 10)
        .background(.white)
    }
    
    @ViewBuilder
    private func main() -> some View {
        GeometryReader {geometry in
            VStack {
                closeButton()
                scoreView()
                
                Spacer()
                gameStatusView()
                Spacer()
                gameBoard(geometry: geometry)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding(.horizontal, 16)
        }
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
