//
//  RendimentosView.swift
//  NadaADeclarar
//
//  Created by Gabriel Vicentin Negro on 31/10/23.
//

import SwiftUI

struct RendimentosView: View {
    
    
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color("Background")
                    .ignoresSafeArea()
                ScrollView{
                    VStack(spacing: 50){
                        CartaoView(valor: "1.345.734,34", subtitulo: "Banco do Brasil", imagem: .cartao, tamanho: .large)
                        CartaoView(valor: "235.356,63", subtitulo: "Nubank", imagem: .cartao, tamanho: .large)
                        CartaoView(valor: "52.353,23", subtitulo: "XP Investimentos", imagem: .cartao, tamanho: .large)
                    }
                }
            }
            .toolbar{
                ToolbarItem{
                    Button(action: {}, label: {
                        Image(systemName: "plus.circle")
                            .foregroundStyle(Color("DarkBlue"))
                            .font(.system(size:17))
                    })
                }
            }
        }
    }
}
#Preview {
    RendimentosView()
}
