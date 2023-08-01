//
//  GameViewModel.swift
//  TicTacGameSwiftUIMVVMFirebase
//
//  Created by MEI on 01.08.2023.
//

import SwiftUI

final class GameViewModel: ObservableObject {
    let colums: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
}
