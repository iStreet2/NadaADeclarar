//
//  LabelTextView.swift
//  NadaADeclarar
//
//  Created by Thiago Liporace on 30/10/23.
//

import SwiftUI

struct LabelTextView: View {
    
    var text: String
    var colour: ColorEnum
    
    init(text: String, colour: ColorEnum) {
        self.text = text
        self.colour = colour
    }
    
    var body: some View {
        Text(text)
            .font(.custom("CabinetGrotesk-Regular", size: 36))
            .fontWeight(.black)
            .multilineTextAlignment(.center)
            .foregroundStyle(colour == .darkBlue ? Color("DarkBlue") : Color.white)
    }
}

#Preview {
    LabelTextView(text: "Label",colour: .darkBlue)
}
