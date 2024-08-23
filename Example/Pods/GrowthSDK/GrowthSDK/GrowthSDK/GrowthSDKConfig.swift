//
//  MoEngageSDKConfig.swift
//  Growth SDK iOS
//
//  Created by B0207530 on 12/08/24.
//

import Foundation

@objc public class GrowthSDKConfig: NSObject {
    var appId: String
    
    init(appId: String) {
        self.appId = appId
    }
}

@objc public enum GrowthUserGender : Int {
    
    /// User gender male
    case male = 0
    
    /// User gender female
    case female
    
    /// User gender others
    case others
    
}
