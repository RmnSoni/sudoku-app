//
//  ContentView.swift
//  SudokuApp
//
//  Created by Raman Soni on 20/08/24.
//

import SwiftUI

struct ContentView: View {
    @State private var grid : [[Int]] = [
        [5, 3, 4, 6, 7, 8, 9, 1, 2],
        [6, 7, 2, 1, 9, 5, 3, 4, 8],
        [1, 9, 8, 3, 4, 2, 5, 6, 7],
        [8, 5, 0, 7, 6, 1, 4, 2, 3],
        [4, 2, 6, 8, 5, 3, 7, 9, 1],
        [7, 1, 3, 9, 2, 4, 0, 5, 6],
        [9, 6, 1, 5, 3, 7, 2, 8, 4],
        [2, 8, 7, 4, 1, 9, 6, 3, 5],
        [3, 4, 5, 2, 8, 6, 1, 7, 9]
    ]
    var body: some View {
        VStack(spacing: 2) {
                    ForEach(0..<9, id: \.self) { row in
                        HStack(spacing: 2) { // Spacing between columns
                            ForEach(0..<9, id: \.self) { column in
                                Text(grid[row][column] == 0 ? " " : "\(grid[row][column])")
                                    .frame(width: 40, height: 40)
                                                .background(Color.white)
                                    .border(Color.black, width: row == 2 ? 2 : 1)
                                    .font(.title2)
                                    .overlay(
                                                    Rectangle()
                                                        .frame(height: 2) // Height of the bottom border
                                                        .foregroundColor(.red), // Color of the bottom border
                                                    alignment: .bottom
                                                )
                            }
                        }
                    }
                }
                .padding(20)
                .background(Color.black)
            }
    
}

#Preview {
    ContentView()
}
