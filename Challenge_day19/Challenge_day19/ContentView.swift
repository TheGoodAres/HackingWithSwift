//
//  ContentView.swift
//  Challenge_day19
//
//  Created by Robert-Dumitru Oprea on 13/02/2023.
//

import SwiftUI

struct BigBlueText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.blue)
    }
}

extension View {
    func bigBlueTitle() -> some View {
        modifier(BigBlueText())
    }
}
struct ContentView: View {
    @State private var agreedToTerms = false
    @State private var agreedToPrivacyPolicy = false
    @State private var agreedToEmails = false

    var body: some View {
        let agreedToAll = Binding<Bool>(
            get: {
                agreedToTerms && agreedToPrivacyPolicy && agreedToEmails
            },
            set: {
                agreedToTerms = $0
                agreedToPrivacyPolicy = $0
                agreedToEmails = $0
            }
        )

        return VStack {
            Toggle("Agree to terms", isOn: $agreedToTerms)
            Toggle("Agree to privacy policy", isOn: $agreedToPrivacyPolicy)
            Toggle("Agree to receive shipping emails", isOn: $agreedToEmails)
            Toggle("Agree to all", isOn: agreedToAll)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
