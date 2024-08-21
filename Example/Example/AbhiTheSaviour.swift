//
//  AbhiTheSaviour.swift
//  Example
//
//  Created by B0276971 on 21/08/24.
//

import Foundation
import RepFramework

class AbhiTheSaviour: ObservableObject {
    @Published var token = "No Token set"

    func setPushToken() {
        let tokenn = UUID().uuidString
//        RepMain.shared.setPushToken(token: tokenn)
        token = tokenn
        printingWorldIssue()
    }
    
    func printingWorldIssue() {
        RepMain.shared.sayHello()
        RepMain.shared.sayHelloToWorld()
    }
}
