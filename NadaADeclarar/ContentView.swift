//
//  ContentView.swift
//  NadaADeclarar
//
//  Created by Gabriel Vicentin Negro on 30/10/23.
//

import SwiftUI

struct ContentView: View {
    
    init(){
        for familyName in UIFont.familyNames{
          print(familyName)
          for fontName in UIFont.fontNames(forFamilyName: familyName){
            print("--- \(fontName)")
          }
        }
      }
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
