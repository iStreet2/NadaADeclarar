//
//  RendimentosView.swift
//  NadaADeclarar
//
//  Created by Gabriel Vicentin Negro on 31/10/23.
//

import SwiftUI

struct RendimentosView: View {
    @EnvironmentObject var vm: ViewModel
    
    var options = ["Informe de Rendimentos", "Pagamentos a Terceiro"]
    @State var option = "Informe de Rendimentos"
    
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
                    
                    ScrollView(showsIndicators: false){
                        VStack{
                            ForEach(vm.cartoes){ cartao in
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
                            LabelSymbolView(colour: .darkBlue, imagem: .maisSimbolo, tamanho: .smallS)
                        })
                    }
                }
            }
        }
    }
}
#Preview {
    RendimentosView()
        .environmentObject(ViewModel())
}
