//
//  CrawlerConfiguration.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 03/04/24.
//

import Foundation


protocol CrawlerConfiguration {
    
    var disallowRules: [CrawlerDisallowRule] { get }
    
}
