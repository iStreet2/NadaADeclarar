//
//  LabelButtonView.swift
//  NadaADeclarar
//
//  Created by Thiago Liporace on 30/10/23.
//

import SwiftUI

struct LabelButtonView: View {
    
    var isOn: Bool
    var colour: ColorEnum
    var size: ButtonSize
    var text: String
    var textColour: ColorEnum
    
    init(isOn: Bool, colour: ColorEnum, size: ButtonSize, text: String, textColour: ColorEnum) {
        self.isOn = isOn
        self.colour = colour
        self.size = size
        self.text = text
        self.textColour = textColour
    }
    
    var body: some View {
            
        HStack(spacing: 20){
                LabelTextView(text: text, colour: textColour)
                if isOn {
                    Image(systemName:
                            "brazilianrealsign.circle.fill")
                    .font(.title)
                    .foregroundStyle(textColour == .darkBlue ? Color("DarkBlue") : Color.white)
                }
            }
            .padding(.horizontal,size == .medium ? 90 : 12)
            .padding(.vertical,size == .medium ? 28 : 16)
            .background(colour == .darkBlue ? Color("DarkBlue") : Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 15))
        
    }
}

#Preview {
    LabelButtonView(isOn: false, colour: .darkBlue, size: .large, text: "Começar",textColour: .white)
}
