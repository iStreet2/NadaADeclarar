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
    
    init(colour: ColorEnum, imagem: ImagesEnum) {
        self.colour = colour
        self.imagem = imagem
    }
    
    var body: some View {
        Image(systemName: imagem == .dinheiro ? "brazilianrealsign.circle.fill" : (imagem == .cartao ? "creditcard" : (imagem == .nota ? "banknote.fill" : "exclamationmark.triangle" )))
        
        .multilineTextAlignment(.center)
        .font(.system(size: 38))
        .foregroundStyle(colour == .darkBlue ? Color("DarkBlue") : Color.white)
    }
}

#Preview {
    LabelSymbolView(colour: .white, imagem: .nota)
}
