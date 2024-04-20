//
//  DefaultCrawlerConfiguration.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 05/04/24.
//

import Foundation

/// A default crawler configuration 
struct DefaultCrawlerConfiguration: CrawlerConfiguration {
    
    init() { }
    
    var disallowRules: [CrawlerDisallowRule] = [CrawlerDisallowRule]()
}
