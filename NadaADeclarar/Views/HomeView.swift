//
//  HomeView.swift
//  NadaADeclarar
//
//  Created by Gabriel Vicentin Negro on 30/10/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack{
            Titulo1View(text: "Fuja da ilha dos impostos!")
            Image("Ondas")
                .padding(.vertical,50)
        }
        VStack{
            HomeViewInformation(imagem: .dinheiro, titulo: "Controle suas Declarações", subtitulo: "Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et.")
            HomeViewInformation(imagem: .alerta, titulo: "Nunca caia na malha fina", subtitulo: "Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et.")
            Spacer()
        }
        .frame(maxWidth: 400)
    }
}

#Preview {
    HomeView()
}
