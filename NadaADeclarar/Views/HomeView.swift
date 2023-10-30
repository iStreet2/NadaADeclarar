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
                HStack{
                    Titulo2View(text: "Controle suas declarações")
                }
            }
    }
}

#Preview {
    HomeView()
}
