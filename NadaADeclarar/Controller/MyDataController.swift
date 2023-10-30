//
//  MyDataController.swift
//  NadaADeclarar
//
//  Created by Gabriel Vicentin Negro on 30/10/23.
//

import Foundation
import CoreData


class MyDataController: ObservableObject {
    
    var context: NSManagedObjectContext
    
    init(context: NSManagedObjectContext){
        self.context = context
        initOnboarding()
        
    }
    
    func saveContext() {
        do{
            try context.save()
        } catch{
            print("Não foi possível salvar os dados")
        }
    }
    
    func initOnboarding(){ //Checar se ja tem uma entidade OnboardingData instanciada no CoreData do Dispositivo do usuario
        let amountCoreDataItems = try? context.count(for: OnboardingData.fetchRequest())
        
        guard amountCoreDataItems == 0 else{
            //ja foi inicializado pela primeira vez
            return
        } //nao foi inicializado ainda
        let onBoarding = OnboardingData(context: context)
        enableOnboarding(onBoarding: onBoarding)
    }
    
    func enableOnboarding(onBoarding: OnboardingData){
        onBoarding.enabled = true
        saveContext()
    }
    
    func disableOnboarding(onBoarding: OnboardingData){
        onBoarding.enabled = false
        saveContext()
    }
    
}
