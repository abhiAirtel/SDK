//
//  AbhiTheSaviour.swift
//  Example
//
//  Created by B0276971 on 21/08/24.
//

import Foundation
import RepFramework
import GrowthSDK

class AbhiTheSaviour: ObservableObject {
    @Published var token = "No Token"
    @Published var name = "No Name "
    @Published var gender = "No Gender "
    
    func setPushToken() {
        let tokenn = UUID().uuidString
        //        RepMain.shared.setPushToken(token: tokenn)
        token = tokenn
        printingWorldIssue()
        printingWorldIssueFromGrowthSDK()
    }
    
    func printingWorldIssue() {
        RepMain.shared.sayHello()
        RepMain.shared.sayHelloToWorld()
    }
    
    func printingWorldIssueFromGrowthSDK() {
        GrowthInstance.setFirstName("Abhi YAduwanshi")
        GrowthInstance.setGender(.male)
        name = "Abhi YAduwanshi"
        gender = "Male"
    }
}
