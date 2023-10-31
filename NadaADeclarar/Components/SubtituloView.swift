//
//  SubtituloView.swift
//  NadaADeclarar
//
//  Created by Gabriel Vicentin Negro on 30/10/23.
//

import SwiftUI

struct SubtituloView: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .font(.custom("CabinetGrotesk-Regular", size: 20))
            .foregroundStyle(Color("DarkGrayCustom"))
            .opacity(0.6)
    }
}

#Preview {
    SubtituloView(text: "Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et.")
}
