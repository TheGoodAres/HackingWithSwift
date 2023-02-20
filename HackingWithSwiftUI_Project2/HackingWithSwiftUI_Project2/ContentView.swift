//
//  ContentView.swift
//  HackingWithSwiftUI_Project2
//
//  Created by Robert-Dumitru Oprea on 14/02/2023.
//

import SwiftUI

struct ContentView: View {
    private var maxRounds = 8
    @State private var roundsPlayed = 0
    @State private var endGame = false
    @State private var score = 0
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)

    struct FlagImage: View {
        var name: String
        var body: some View {
            Image(name)
                .renderingMode(.original)
                .clipShape(Capsule())
                .shadow(radius: 5)
        }
    }
    var body: some View {
        ZStack {
            RadialGradient(stops: [
                    .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                    .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3)
            ], center: .top, startRadius: 200, endRadius: 700)
                .ignoresSafeArea()
            VStack {
                Spacer()
                Text("Guess The Flag")
                    .font(.largeTitle.bold())
                    .foregroundColor(.white)
                VStack(spacing: 15) {
                    VStack {
                        Text("Tap the flag of")
                            .foregroundStyle(.secondary)
                            .font(.subheadline.weight(.heavy))
                        Text(countries[correctAnswer])
                            .font(.largeTitle.weight(.semibold))
                    }
                    ForEach(0..<3) { number in
                        Button {
                            flagTapped(number)
                        } label: {
                            FlagImage(name: countries[number])
                        }
                    }
                }
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 20)
                    .background(.regularMaterial)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Spacer()
                Spacer()
                Text("Score: \(score)")
                    .foregroundColor(.white)
                    .font(.title.bold())
                Spacer()
            }

        }
            .alert("End game", isPresented: $endGame) {
            Button("Reset", action: reset)
        } message: {
            Text("""
                     The game ended!
                        Your score is \(score)
                    """)
        }

            .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            Text("Your Score is \(score)")
        }

    }


    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
            score += 1

        } else {
            scoreTitle = "False, that's the flag of \(countries[number])"
            score -= 1
        }

        roundsPlayed += 1
        showingScore = true
        endGame = roundsPlayed == maxRounds
    }

    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    func reset() {
        roundsPlayed = 0
        score = 0
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
