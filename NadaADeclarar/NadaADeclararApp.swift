//
//  NadaADeclararApp.swift
//  NadaADeclarar
//
//  Created by Gabriel Vicentin Negro on 30/10/23.
//

import SwiftUI
import CoreData


@main
struct NadaADeclararApp: App {
    
    @StateObject var dataController = DataController()
    @StateObject var vm = ViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView(context: dataController.container.viewContext)
                .environment(\.managedObjectContext, dataController.container.viewContext)
                .environmentObject(vm)
        }
    }
}
