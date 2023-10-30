//
//  Titulo2View.swift
//  NadaADeclarar
//
//  Created by Gabriel Vicentin Negro on 30/10/23.
//

import SwiftUI

struct Titulo2View: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .font(.custom("CabinetGrotesk-Regular", size: 24).bold())
    }
}

#Preview {
    VStack{
        Titulo2View(text: "Controle suas declarações")
        Titulo2View(text: "Nunca caia na malha fina")
    }
}
