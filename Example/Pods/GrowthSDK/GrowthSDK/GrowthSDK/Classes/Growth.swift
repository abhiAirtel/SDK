//
//  Growth.swift
//  Growth SDK iOS
//
//  Created by B0207530 on 09/08/24.
//

import Foundation
import UserNotifications

public let GrowthInstance = Growth.sharedInstance

@objc public class Growth: NSObject {
    
    private override init() {}
    
    public static let sharedInstance = Growth()
    
    /// Initialize Default instance
    /// - Parameters:
    ///   - sdkConfig: Instance of  `GrowthSDKConfig`
    @objc public func initializeInstance(_ sdkConfig: GrowthSDKConfig) {
        let _ = KeyChainHelper.save(key: GrowthKeys.appIdKey, data: Data(from: sdkConfig.appId))
    }
    
    /// Track custom events
    /// - Parameter eventName: name of event
    /// - Parameter properties: custom properties
    @objc func track(eventName: String, properties: [String: Any]) {
        
    }
    
    /// Set custom user attribute for Default instance
    /// - Parameter value: attribute value
    /// - Parameter attributeName: attribute name
    @objc public func setUserAttribute(_ value: Any?, withAttributeName attributeName: String) {
        
    }
    
    /// Set push token
    /// - Parameter token: token value
    @objc public func setPushToken(token: String) {
        let _ = KeyChainHelper.save(key: GrowthKeys.tokenKey, data: Data(from: token))
    }
    
    /// Inform  about failure to register push token
    @objc public func didFailToRegisterForPush() {
        
    }
    
    /// Inform  about user notification received
    /// - Parameter center: Notification center
    /// - Parameter response: Notification response
    @objc public func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse) {
        
    }
    
    /// Set unique ID for Default instance
    /// - Parameter uniqueID: Unique ID
    @objc public func setUniqueID(_ uniqueID: String) {
        let _ = KeyChainHelper.save(key: GrowthKeys.uidKey, data: Data(from: uniqueID))
    }

    /// Set Email ID
    /// - Parameter emailID: emailID value.
    @objc public func setEmailID(_ emailID: String) {
        
    }

    /// Set user name
    /// - Parameter userName: User Name value passed by user
    @objc public func setName(_ userName: String) {
        
    }

    /// Set User first name
    /// - Parameter firstName: First Name value passed by user
    @objc public func setFirstName(_ firstName: String) {
        
    }

    /// Set User last name
    /// - Parameter lastName: Last Name value passed by user
    @objc public func setLastName(_ lastName: String) {
        
    }

    /// Set mobile number
    /// - Parameter mobileNum: Mobile Number value passed by user
    @objc public func setMobileNumber(_ mobileNum: String) {
        
    }

    /// Set User gender
    /// - Parameter gender: Gender value passed by user
    @objc public func setGender(_ gender: GrowthUserGender) {
        
    }

    /// Set User Date of Birth
    /// - Parameter dob: Date of Birth passed by user
    @objc public func setDateOfBirth(_ dob: Date) {
        
    }
    
}
