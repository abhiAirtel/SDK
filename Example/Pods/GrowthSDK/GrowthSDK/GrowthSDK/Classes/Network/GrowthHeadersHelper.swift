//
//  GrowthHeadersHelper.swift
//  Growth SDK iOS
//
//  Created by B0207530 on 12/08/24.
//

import Foundation
import UIKit

struct GrowthKeys {
    
    // APP specific
    static let appIdKey = "appId"
    static let uidKey =  "uid"
    static let deviceIdKey = "deviceId"
    static let appVersionKey = "appVersion"
    
    // DEVICE details
    static let tokenKey =  "token"
    static let deviceTzKey =  "deviceTz"
    static let osKey =  "os"
    static let osVersionKey = "osVersion"
    static let modelNameKey = "modelName"
    static let modelKey = "model"
    static let deviceTzOffsetKey = "deviceTzOffset"
    static let heartbeatKey  = "heartbeat"
    
    // sdk details
    static let sdkVersionKey = "sdkVersion"
    static let sdkDeviceIdKey = "sdkDeviceId"
    
    struct GrowthHeaderKeys {
        static let appIDKey = "x-bsy-app-id"
        static let appBundleIdKey = "x-bsy-bundle"
        static let sdkBundleIDKey = "x-bsy-app"
        static let cidKey = "x-bsy-cid"
        static let didKey = "x-bsy-did"
        static let netKey = "x-bsy-net"
    }
}


internal class GrowthHeadersHelper: NSObject {
    
    internal func getAppId() -> String? {
        if let receivedData = KeyChainHelper.load(key: GrowthKeys.appIdKey) {
            let result = receivedData.to(type: String.self)
            return result
        }
        return nil
    }
    
    internal func getToken() -> String? {
        if let receivedData = KeyChainHelper.load(key: GrowthKeys.tokenKey) {
            let result = receivedData.to(type: String.self)
            return result
        }
        return nil
    }
    
    internal func getUID() -> String? {
        if let receivedData = KeyChainHelper.load(key: GrowthKeys.uidKey) {
            let result = receivedData.to(type: String.self)
            return result
        }
        return nil
    }
    
    internal func getCid() {
        
    }
    
    internal func getDid() {
        
    }
    
    internal func getAppVersion() {
        
    }
    
    internal func getAppBundleId() -> String? {
       return Bundle.main.bundleIdentifier
    }
    
    internal func getVendorDeviceId() -> String? {
        if let receivedData = KeyChainHelper.load(key: GrowthKeys.deviceIdKey) {
            let result = receivedData.to(type: String.self)
            return result
        }else {
            let id = UIDevice.current.identifierForVendor?.uuidString
            let _ = KeyChainHelper.save(key: GrowthKeys.deviceIdKey, data: Data(from: id))
            return id
        }
    }
    
    internal func getdeviceTzOffset() {
        
    }
    
    internal func getdeviceTz() {
        
    }
    
    internal func getmodelName() -> String {
        return "iPhone 8"
    }
    
    internal func getmodel() -> String {
        return "iPhone"
    }

    internal func getOS() -> String {
        return "iOS"
    }
    
    internal func getOSVersion() -> String {
        return UIDevice.current.systemVersion
    }
    
    //SDK related
    internal func getSDKVersion() {
        
    }
    
    internal func getSDKBundleID() {
        
    }
    
    internal func sdkDeviceId() -> String? {
        if let receivedData = KeyChainHelper.load(key: GrowthKeys.sdkDeviceIdKey) {
            let result = receivedData.to(type: String.self)
            return result
        }else {
            var id = UUID().uuidString
            id = "\(id)-\(Date().timeIntervalSince1970)"
            let _ = KeyChainHelper.save(key: GrowthKeys.sdkDeviceIdKey, data: Data(from: id))
            return id
        }
    }
}
 
