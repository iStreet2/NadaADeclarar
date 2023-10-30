//
//  LabelSymbolView.swift
//  NadaADeclarar
//
//  Created by Thiago Liporace on 30/10/23.
//

import SwiftUI

struct LabelSymbolView: View {
    
    var colour: ColorEnum
    
    init(colour: ColorEnum) {
        self.colour = colour
    }
    
    var body: some View {
        Image(systemName:
                "brazilianrealsign.circle.fill")
        .multilineTextAlignment(.center)
        .font(.system(size: 38))
        .foregroundStyle(colour == .darkBlue ? Color("DarkBlue") : Color.white)
    }
}

#Preview {
    LabelSymbolView(colour: .darkBlue)
}
