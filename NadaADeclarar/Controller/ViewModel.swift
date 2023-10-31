//
//  ViewModel.swift
//  NadaADeclarar
//
//  Created by Gabriel Vicentin Negro on 31/10/23.
//

import Foundation


class ViewModel: ObservableObject {
    var cartoes = [CartaoView(valor: "1.345.734,34", subtitulo: "Banco do Brasil", imagem: .cartao, tamanho: .large),
                   CartaoView(valor: "235.356,63", subtitulo: "Nubank", imagem: .cartao, tamanho: .large),
                   CartaoView(valor: "52.353,23", subtitulo: "XP Investimentos", imagem: .cartao, tamanho: .large),
                   CartaoView(valor: "12,39", subtitulo: "Inter", imagem: .cartao, tamanho: .large),
                   CartaoView(valor: "1.744.334,45", subtitulo: "Bradesco", imagem: .cartao, tamanho: .large),
                   CartaoView(valor: "234.654.834.654,45", subtitulo: "BTG Pactual", imagem: .cartao, tamanho: .large),
                   CartaoView(valor: "46.396,87", subtitulo: "Santander", imagem: .cartao, tamanho: .large),
                   CartaoView(valor: "453.834,34", subtitulo: "PicPay", imagem: .cartao, tamanho: .large),
                   CartaoView(valor: "2,32", subtitulo: "Banco do Nordeste", imagem: .cartao, tamanho: .large),
                   CartaoView(valor: "245.243,72", subtitulo: "Para: Jaydon Septimus", imagem: .nota, tamanho: .large),
                   CartaoView(valor: "10.234,52", subtitulo: "Para: Lucas Zanatta", imagem: .nota, tamanho: .large),
                   CartaoView(valor: "73.367,24", subtitulo: "Para: Thiago Liporace", imagem: .nota, tamanho: .large),
                   CartaoView(valor: "247.764,85", subtitulo: "Para: Gabriel Vicentin", imagem: .nota, tamanho: .large),
                   CartaoView(valor: "925.317,23", subtitulo: "Para: Pedro Pascal", imagem: .nota, tamanho: .large),
                   CartaoView(valor: "999.105,12", subtitulo: "Para: Arthur Alvin", imagem: .nota, tamanho: .large),
                   CartaoView(valor: "1.184.337,94", subtitulo: "Para: Sophie Landmark", imagem: .nota, tamanho: .large),
                   CartaoView(valor: "961.184,09", subtitulo: "Para: Ed Graça", imagem: .nota, tamanho: .large),
                   CartaoView(valor: "8.751.275,49", subtitulo: "Para: Toddy Boa", imagem: .nota, tamanho: .large),
                   CartaoView(valor: "4.683.834,39", subtitulo: "Para: James Leander Lemon", imagem: .nota, tamanho: .large),
                   CartaoView(valor: "8.415.851,20", subtitulo: "Para: Cleber da Silva", imagem: .nota, tamanho: .large),
                   CartaoView(valor: "3.685.559,12", subtitulo: "Para: Laura Coelho", imagem: .nota, tamanho: .large),
                   CartaoView(valor: "4.576.449,35", subtitulo: "Para: Rachel Keyboard", imagem: .nota, tamanho: .large),
                   
    ]
    
    
}
