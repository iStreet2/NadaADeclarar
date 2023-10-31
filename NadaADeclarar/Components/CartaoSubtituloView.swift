//
//  CartaoSubtituloView.swift
//  NadaADeclarar
//
//  Created by Gabriel Vicentin Negro on 31/10/23.
//

import SwiftUI

struct CartaoSubtituloView: View {
    var text: String
    var body: some View {
        Text(text)
            .font(Font.custom("CabinetGrotesk-Regular", size: 25))
            .foregroundStyle(Color("LightGrayCustom"))
    }
}

#Preview {
    VStack{
        CartaoSubtituloView(text: "Banco do Brasil")
        CartaoSubtituloView(text: "Para: Lucas Zanatta")
    }
}
