//
//  ContentView.swift
//  NadaADeclarar
//
//  Created by Gabriel Vicentin Negro on 30/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LabelButtonView(isOn: true, colour: .darkBlue, size: .medium, text: "Label", textColour: .white)
    }
}

#Preview {
    ContentView()
}
