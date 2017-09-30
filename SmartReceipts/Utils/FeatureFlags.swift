//
//  FeatureManager.swift
//  SmartReceipts
//
//  Created by Bogdan Evsenev on 03/09/2017.
//  Copyright © 2017 Will Baumann. All rights reserved.
//

import Foundation

class FeatureFlags {
    static let loginSupport = Feature(true)
    static let ocrSupport   = Feature(true)
    
    #if DEBUG
        static var useProdEndpoints = Feature(false)
    #else
        static var useProdEndpoints = Feature(true)
    #endif
}

class Feature {
    private(set) var isEnabled: Bool
    
    init(_ enabled: Bool) {
        isEnabled = enabled
    }
}
