//
//  CartaoTituloView.swift
//  NadaADeclarar
//
//  Created by Thiago Liporace on 31/10/23.
//

import SwiftUI

struct CartaoTituloView: View {
    
    var text: String
    
    init(text: String) {
        self.text = text
    }
    
    var body: some View {
        Text(text)
            .font(.custom("CabinetGrotesk-Regular", size: 40))
            .fontWeight(.bold)
            .foregroundStyle(Color.white)
    }
}

#Preview {
    CartaoTituloView(text: "1.345.734,34")
        .background(Rectangle())
}
