//
//  HomeView.swift
//  NadaADeclarar
//
//  Created by Gabriel Vicentin Negro on 30/10/23.
//

import SwiftUI
import CoreData

struct HomeSheetView: View {
    
    @Environment(\.dismiss) var dismiss
    
    //Coisa do CoreData
    @Environment(\.managedObjectContext) var context //Contexto, DataController
    //Coisas do MyDataController
    @ObservedObject var myDataController: MyDataController
    @FetchRequest(sortDescriptors: []) var onBoarding: FetchedResults<OnboardingData> //Vetor de todas minhas instâncias
    
    init(context: NSManagedObjectContext) {
        self.myDataController = MyDataController(context: context)
    }
    
    var body: some View {
        VStack{
            VStack{
                Titulo1View(text: "Fuja da ilha dos impostos!")
                Image("Ondas")
                    .padding(.vertical,50)
            }
            HStack{
                Spacer()
                VStack(alignment:.leading,spacing:20){
                    
                    HomeViewInformation(imagem: .dinheiro, titulo: "Controle suas Declarações", subtitulo: "Facilite na hora de declarar para a Receita Federal.")
                    HomeViewInformation(imagem: .alerta, titulo: "Nunca caia na malha fina", subtitulo: "Ter uma boa declaração de Imposto de Renda diminui\n suas chances de cair na malha fina!")
                    Spacer()
                }
                Spacer()
            }
            VStack{
                Button {
                    myDataController.disableOnboarding(onBoarding: onBoarding[0])
                    dismiss()
                } label: {
                    LabelButtonView(isOn: false, colour: .darkBlue, size: .large, text: "Começar", textColour: .white)
                }
            }
        }
        .padding(40)
    }
}

#Preview {
    HomeSheetView(context: DataController().container.viewContext)
}
