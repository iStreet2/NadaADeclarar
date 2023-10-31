//
//  RendimentosView.swift
//  NadaADeclarar
//
//  Created by Gabriel Vicentin Negro on 31/10/23.
//

import SwiftUI

struct RendimentosView: View {
    
    var options = ["Informe de Rendimentos", "Pagamentos a Terceiro"]
    @State var option = "Informe de Rendimentos"
    
    var cartoes = [CartaoView(valor: "1.345.734,34", subtitulo: "Banco do Brasil", imagem: .cartao, tamanho: .large),CartaoView(valor: "235.356,63", subtitulo: "Nubank", imagem: .cartao, tamanho: .large),CartaoView(valor: "52.353,23", subtitulo: "XP Investimentos", imagem: .cartao, tamanho: .large),CartaoView(valor: "245.243,72", subtitulo: "Para: Jaydon Septimus", imagem: .nota, tamanho: .large),CartaoView(valor: "10.234,52", subtitulo: "Para: Lucas Zanatta", imagem: .nota, tamanho: .large),CartaoView(valor: "73.367,24", subtitulo: "Para: Thiago Liporace", imagem: .nota, tamanho: .large),CartaoView(valor: "10,001,01", subtitulo: "Para: Gabriel Vicentin", imagem: .nota, tamanho: .large)]
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color("Background")
                    .ignoresSafeArea()
                VStack{
                    Picker("", selection: $option) {
                        ForEach(options, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.segmented)
                    .padding(.horizontal,250)
                    ScrollView{
                        VStack{
                            ForEach(cartoes){ cartao in
                                if option == "Informe de Rendimentos"{
                                    if cartao.imagem == .cartao{
                                        cartao
                                    }
                                }else{
                                    if cartao.imagem == .nota{
                                        cartao
                                    }
                                }
                            }
                            .padding(.top,20)
                        }
                        .padding(.top,50)
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
}
#Preview {
    RendimentosView()
}
