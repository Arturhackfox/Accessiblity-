//
//  ContentView.swift
//  accessibilityTestProj
//
//  Created by Arthur Sh on 26.12.2022.
//

import SwiftUI

struct ContentView: View {
    let pictures = [
           "ales-krivec-15949",
           "galina-n-189483",
           "kevin-horstmann-141705",
           "nicolas-tissot-335096"
       ]
    
    let labels = [
        "Tulips",
        "Frozen tree buds",
        "Sunflowers",
        "Fireworks",
    ]
    
    @State var selectedPicture = Int.random(in: 0...3)
    var body: some View {
        Image(pictures[selectedPicture])
            .resizable()
            .padding()
            .scaledToFit()
            .onTapGesture {
                selectedPicture = Int.random(in: 0...3)
            }
            .accessibilityLabel(labels[selectedPicture])
            .accessibilityHint("It will change the picture")
            .accessibilityAddTraits(.isButton)
            .accessibilityRemoveTraits(.isImage)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
