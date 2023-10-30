//
//  TituloView.swift
//  NadaADeclarar
//
//  Created by Gabriel Vicentin Negro on 30/10/23.
//

import SwiftUI

struct Titulo1View: View {
    
    var text: String
   
    var body: some View {
        Text(text)
            .font(.custom("CabinetGrotesk-Regular", size: 40).bold())
            .foregroundColor(Color("DarkBlue"))
    }
    
}

#Preview {
    Titulo1View(text: "Fuja da ilha dos impostos!")
}
