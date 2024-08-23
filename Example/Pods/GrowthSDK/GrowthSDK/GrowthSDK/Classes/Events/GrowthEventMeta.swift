//
//  GrowthEventMeta.swift
//  Growth SDK iOS
//
//  Created by B0207530 on 13/08/24.
//

import Foundation

struct GrowthEventMeta {
    let timestamp: TimeInterval?
    let id: String?
    let deviceId: String?
    let events: [Events]?
}

struct Events {
    let eventType: String?
    let timestamp: String?
    let net: String?
    let meta: [String: Any]?
    let did: String?
    let uid: String?
}
