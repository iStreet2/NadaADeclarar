//
//  ContentView.swift
//  NadaADeclarar
//
//  Created by Gabriel Vicentin Negro on 30/10/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @State var sheet = false
    
    
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
            Color("Background")
                .ignoresSafeArea()
        }
        .onAppear{
            if onBoarding[0].enabled{
                sheet = true
            }
        }
        .sheet(isPresented: $sheet, content: {
            HomeSheetView(context: context)
                .interactiveDismissDisabled()
        })
        
    }
}
#Preview {
    ContentView(context: DataController().container.viewContext)
}
