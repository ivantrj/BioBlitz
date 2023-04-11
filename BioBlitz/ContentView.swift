//
//  ContentView.swift
//  BioBlitz
//
//  Created by Ivan Trajanovski on 10.04.23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var board = GameBoard()
    
    var body: some View {
        VStack {
            HStack {
                Text("GREEN: 0")
                
                Spacer()
                
                Text("BIOBLITZ")
                
                Spacer()
                
                Text("RED: 0")
            }
            .font(.system(size: 36).weight(.black))
            
            VStack {
                ForEach(0..<11, id: \.self) { row in
                    HStack {
                        ForEach(0..<22, id: \.self) { col in
                            let bacteria = board.grid[row][col]
                            
                            BacteriaView(bacteria: bacteria) {
                                // rotate this bacteria
                            }
                        }
                    }
                }
            }
            .padding()
            .fixedSize()
            .preferredColorScheme(.dark)
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
