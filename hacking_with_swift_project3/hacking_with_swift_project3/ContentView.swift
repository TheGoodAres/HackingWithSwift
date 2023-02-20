//
//  ContentView.swift
//  hacking_with_swift_project3
//
//  Created by Robert-Dumitru Oprea on 18/02/2023.
//

import SwiftUI
struct Watermark: ViewModifier {
    var text: String

    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content

            Text(text)
                .font(.caption)
                .foregroundColor(.white)
                .padding()
                .background(.black)
        }
    }
}

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}
extension View {
    func watermarked(with text: String) -> some View {
        modifier(Watermark(text: text))
    }
}

extension View {
    func titleStyle() -> some View {
        modifier(Title())
    }
}

struct CapsuleText: View {
    var text: String
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .background(.blue)
            .clipShape(Capsule())
    }

}

struct GridStack<Content: View>: View {
    let rows: Int
    let columns: Int
    @ViewBuilder  let content: (Int, Int) -> Content

    var body: some View {
        VStack {
            ForEach(0..<rows, id: \.self) { row in
                HStack {
                    ForEach(0..<columns, id: \.self) { column in
                        content(row, column)
                    }
                }
            }
        }
    }
}
// from here
struct ContentView: View {

    var body: some View {
        GridStack(rows: 4, columns: 4) { row, col in
                Image(systemName: "\(row * 4 + col).circle")

                Text("R\(row) C\(col)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

