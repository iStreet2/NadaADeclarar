//
//  HomeViewInformation.swift
//  NadaADeclarar
//
//  Created by Gabriel Vicentin Negro on 30/10/23.
//

import SwiftUI

struct HomeViewInformation: View {
    
    var imagem: ImagesEnum
    var titulo: String
    var subtitulo: String
    
    var body: some View {
        
        HStack{
            LabelSymbolView(colour: .darkBlue, imagem: imagem, tamanho: .mediumS)
            VStack(alignment:.leading){
                Titulo2View(text: titulo)
                SubtituloView(text: subtitulo)
            }
        }
    }
}

#Preview {
    VStack{
        HomeViewInformation(imagem: .dinheiro, titulo: "Controle suas Declarações", subtitulo: "Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et.")
        HomeViewInformation(imagem: .alerta, titulo: "Nunca caia na malha fina", subtitulo: "Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et.")
    }
}
