//
//  LabelSymbolView.swift
//  NadaADeclarar
//
//  Created by Thiago Liporace on 30/10/23.
//

import SwiftUI

struct LabelSymbolView: View {
    
    var colour: ColorEnum
    var imagem: ImagesEnum
    var tamanho: LabelSize
    
    
    var body: some View {
        Image(systemName: imagem == .dinheiro ? "brazilianrealsign.circle.fill" : (imagem == .cartao ? "creditcard" : (imagem == .nota ? "banknote.fill" : "exclamationmark.triangle" )))
        
        .multilineTextAlignment(.center)
        .font(.system(size: tamanho == .smallS ? 15 : (tamanho == .mediumS ? 34 : 40)))
        .foregroundStyle(colour == .darkBlue ? Color("DarkBlue") : Color.white)
    }
}

#Preview {
    LabelSymbolView(colour: .darkBlue, imagem: .nota, tamanho: .largeS)
}
