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
    
    @available(iOS 16.0, *)
    func publishViaDevice(buildDirectoryPath: String) throws
    
    @available(macOS 13.0, *)
    func publishViaSPM(rootUrl: StaticString, buildDirectoryPath: String) throws
}

public extension WebSite {
    
    var name: String {
        return String(describing: type(of: self))
    }
    
    var description: String? { nil }
    
    var crawlerConfiguration: CrawlerConfiguration {
        return DefaultCrawlerConfiguration()
    }
    
    func publishViaDevice(buildDirectoryPath: String = "Build") throws {
        
        let generator = try SiteGenerator(site: self, buildDirectoryPath: buildDirectoryPath)
        
        do {
            try generator.generate()
        }
        
    }
    
    func publishViaSPM(rootUrl: StaticString = #file, buildDirectoryPath: String = "Builds") throws {
        
        let generator = try SiteGenerator(site: self, rootUrl: rootUrl, buildDirectoryPath: buildDirectoryPath)
        
        do {
            try generator.generate()
        }
    }
}
