//
//  ContentView.swift
//  NadaADeclarar
//
//  Created by Gabriel Vicentin Negro on 30/10/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var sheet = true
    
    var body: some View {
        VStack{
            
        }
        .sheet(isPresented: $sheet, content: {
            HomeView()
                .interactiveDismissDisabled()
        })
        
    }
}

#Preview {
    ContentView()
}
