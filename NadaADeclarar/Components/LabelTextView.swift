//
//  LabelTextView.swift
//  NadaADeclarar
//
//  Created by Thiago Liporace on 30/10/23.
//

import SwiftUI

struct LabelTextView: View {
    
    var text: String
    
    
    init(text: String) {
        self.text = text
    }
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    LabelTextView(text: "Label")
}
