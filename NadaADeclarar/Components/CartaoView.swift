//
//  CartaoView.swift
//  NadaADeclarar
//
//  Created by Gabriel Vicentin Negro on 31/10/23.
//

import SwiftUI

struct CartaoView: View {
    
    var valor: String
    var subtitulo: String
    var imagem: ImagesEnum
    var tamanho: ButtonSize
    
    var body: some View {
        VStack(alignment:.leading){
            LabelSymbolView(colour: .white, imagem: imagem)
                .padding(.bottom,2)
            CartaoTituloView(text: valor)
            CartaoSubtituloView(text: subtitulo)
        }
        .padding(20)
        .frame(width: tamanho == .large ? 645 : 344, height: 171,alignment: .leading)
        .background(Color("DarkBlue"))
        
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

#Preview {
    VStack(alignment:.leading,spacing:50){
        CartaoView(valor: "1.345.734,34", subtitulo: "Banco do Brasil", imagem: .cartao, tamanho: .medium)
        CartaoView(valor: "302.436,24", subtitulo: "Para: Lucas Zanatta", imagem: . nota, tamanho: .large)
    }
}
