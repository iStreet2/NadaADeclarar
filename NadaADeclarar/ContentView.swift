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
        LabelButtonView(isOn: true, colour: .darkBlue, size: .medium, text: "Label", textColour: .white)
    }
}

#Preview {
    ContentView()
}
