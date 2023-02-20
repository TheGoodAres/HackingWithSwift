//
//  ContentView.swift
//  challenge_day25
//
//  Created by Robert-Dumitru Oprea on 19/02/2023.
//

import SwiftUI

struct ContentView: View {
    var options = ["Paper", "Scissors", "Rock"]
    @State private var userChoice: Int
    @State private var computerChoice: Int
    
    var body: some View {
        NavigationView{
            Form {
                Group {
                    ForEach(0..<3) {
                        Button()
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("Rock Scissors Paper")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
