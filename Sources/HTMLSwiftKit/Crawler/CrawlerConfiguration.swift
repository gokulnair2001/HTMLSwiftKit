//
//  CrawlerConfiguration.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 03/04/24.
//

import Foundation

/// Configuration protocol for crawlers
public protocol CrawlerConfiguration {
    
    /// Disallow rules to apply
    var disallowRules: [CrawlerDisallowRule] { get }
    
}
