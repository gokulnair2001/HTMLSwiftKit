//
//  WebSite.swift
//
//
//  Created by Gokul Nair on 07/04/24.
//

import Foundation


public protocol WebSite {
    
    var name: String { get }
    
    var baseUrl: URL { get }
    
    var author: String { get }

    var description: String? { get }
    
    @BlockBuilder<HTMLPage> var pages: [any HTMLPage] { get }
    
    var crawlerConfiguration: CrawlerConfiguration { get }
    
    func publish(from file: StaticString, buildDirectoryPath: String) throws
}

public extension WebSite {
    
    var name: String {
        return String(describing: type(of: self))
    }
    
    var description: String? { nil }
    
    var crawlerConfiguration: CrawlerConfiguration {
        return DefaultCrawlerConfiguration()
    }
    
    func publish(from file: StaticString, buildDirectoryPath: String) throws {
        
        let generator = try SiteGenerator(site: self, rootURL: file, buildDirectoryPath: "Build")
        
        do {
            try generator.gene
        }
        
    }
}
