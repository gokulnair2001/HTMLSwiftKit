//
//  WebSite.swift
//
//
//  Created by Gokul Nair on 07/04/24.
//

import Foundation


/// Website Protocol
/// It is the aggregated data source of the website
/// All the necessary information to generate the Website is mentioned here
public protocol WebSite {
    
    /// Name of the Website
    var name: String { get }
    
    /// Base URL of Website
    /// For Eg: "www.yourwebiste.com"
    var baseUrl: URL { get }
    
    /// Author of the website
    var author: String { get }
    
    /// Description of the website
    var description: String? { get }
    
    /// All the Webpages linked to this website
    @BlockBuilder<HTMLPage> var pages: [any HTMLPage] { get }
    
    /// Robot configuration
    var crawlerConfiguration: CrawlerConfiguration { get }
    
    /// Site Publisher method(via Device)
    @available(iOS 16.0, *)
    func publishViaDevice(buildDirectoryPath: String) throws
    
    /// Site Publisher method(via SPM)
    @available(macOS 13.0, *)
    func publishViaSPM(rootUrl: StaticString, buildDirectoryPath: String) throws
}

/// Default implementations
public extension WebSite {
    
    /// Default name
    var name: String {
        return String(describing: type(of: self))
    }
    
    /// Site description
    var description: String? { nil }
    
    /// Default crawler configuration
    var crawlerConfiguration: CrawlerConfiguration {
        return DefaultCrawlerConfiguration()
    }
    
    /// Publisher
    func publishViaDevice(buildDirectoryPath: String = "Build") throws {
        
        let generator = SiteGenerator(site: self, buildDirectoryPath: buildDirectoryPath)
        
        do {
            try generator.generate()
        }
        
        debugPrint("HTMLSwiftKit: Build is available at \(generator.rootDirectory.absoluteString)")
    }
    
    /// Publisher
    func publishViaSPM(rootUrl: StaticString = #file, buildDirectoryPath: String = "Builds") throws {
        
        let generator = try SiteGenerator(site: self, rootUrl: rootUrl, buildDirectoryPath: buildDirectoryPath)
        
        do {
            try generator.generate()
        }
    }
}
