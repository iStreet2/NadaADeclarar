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
    @EnvironmentObject var vm: ViewModel
    
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
