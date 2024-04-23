//
//  SiteGenerator.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 04/04/24.
//

import Foundation

/// Site Generator
public class SiteGenerator {
    
    /// Website to generate
    private(set) var site: WebSite
    
    /// Root Directory path
    private(set) var rootDirectory: URL
    
    /// Build Directory path
    private var buildDirectory: URL
    
    /// Asset Directory path
    private var assetsDirectory: URL
    
    /// Site Map data
    private(set) var siteMaps: [SiteMapData] = []
    
    /// filemanager
    private let fileManager = FileManager.default
    
    /// Used when site generation needs to be done via Device
    public init(site: WebSite, buildDirectoryPath: String = "Build") {
        self.site = site
        self.rootDirectory = fileManager.urls(for: .documentDirectory, in: .userDomainMask).first!
        
        buildDirectory = rootDirectory.appending(path: buildDirectoryPath)
        assetsDirectory = rootDirectory.appending(path: "Assets")
    }
    
    /// Used when site generation needs to be done via SPM
    public init(site: WebSite, rootUrl: StaticString, buildDirectoryPath: String = "Build") throws {
        self.site = site
        self.rootDirectory = try URL.packageDirectory(from: rootUrl)
        
        buildDirectory = rootDirectory.appending(path: buildDirectoryPath)
        assetsDirectory = rootDirectory.appending(path: "Assets")
    }
    
    /// Necessary Site generation methods
    public func generate() throws {
        try clearBuildFolder()
        try createHTMLFolder()
        try createAssetsFolder()
        try createCrawlerFolder()
        try createSiteMapFolder()
    }
    
    /// Clears Build folder if a build exits else creates a new build directory
    private func clearBuildFolder() throws {
        
        /// Checks for file existence
        if fileManager.fileExists(atPath: buildDirectory.path()) {
            do {
                try fileManager.removeItem(at: buildDirectory)
            } catch {
                throw SiteGeneratorError.failedToClearBuildDirectory(buildDirectory)
            }
        }
        
        /// Creates build directory
        do {
            try fileManager.createDirectory(at: buildDirectory, withIntermediateDirectories: false)
        } catch {
            throw SiteGeneratorError.failedToClearBuildDirectory(buildDirectory)
        }
    }
    
    /// Creates HTML content for all the webpages linked to the website into the build directory
    private func createHTMLFolder() throws {
        
        do {
            /// Loops in each page to create and write content
            try site.pages.forEach { [weak self] page in
                
                guard let self else { return }
                
                do {
                    /// Writes content to specified path
                    try self.write(page.generateCodeBlock(), fileName: "\(page.name).html", to: buildDirectory, priority: page.priority, changeFreq: page.changeFreq)
                }
            }
            
        } catch {
            throw SiteGeneratorError.failedToGeneratePage(buildDirectory)
        }
    }
    
    /// Writes necessary content into the provided directory with provided file name
    /// - Parameters:
    ///   - string: Content for the file
    ///   - fileName: file name
    ///   - directory: directory in which file needs to be written
    ///   - priority: priority of the web page
    ///   - changeFreq: site map change frequency
    private func write(_ string: String, fileName: String, to directory: URL, priority: Double = 0, changeFreq: ChangeFrequency = .Never) throws {
        
        /// Creates directory
        do {
            try fileManager.createDirectory(at: directory, withIntermediateDirectories: true)
        } catch {
            throw SiteGeneratorError.failedToCreateBuildDirectory(directory)
        }
        
        /// File path formation
        let outputURL = directory.appending(path: fileName)
        
        do {
            /// Writes content to specified outputURL
            try string.write(to: outputURL, atomically: true, encoding: .utf8)
            /// Adds new page to site map source
            self.addNewSiteMap(data: SiteMapData(path: "/\(fileName)", priority: priority, changeFrequency: changeFreq))
            
        } catch {
            throw SiteGeneratorError.failedToGeneratePage(outputURL)
        }
    }
    
    /// Creates Asset Directory
    private func createAssetsFolder() throws {
        
        /// Checks for file existence
        guard !fileManager.fileExists(atPath: assetsDirectory.path()) else {
            return
        }
        
        /// Creates asset directory
        do {
            try fileManager.createDirectory(atPath: assetsDirectory.path(), withIntermediateDirectories: true)
            
        } catch {
            throw SiteGeneratorError.failedToCreateAssetDirectory(assetsDirectory)
        }
    }
    
    /// Creates SiteMap Directory
    private func createSiteMapFolder() throws {
        /// Sitemap content genration
        let siteMapGenerator = SiteMapGenerator(context: self)
        let content = siteMapGenerator.generateSiteMap()
        
        /// Sitemap file path
        let outputUrl = buildDirectory.appending(path: "sitemap.xml")
        
        /// Writes content to sitemap file path
        do {
            try content.write(to: outputUrl, atomically: true, encoding: .utf8)
        } catch {
            throw SiteGeneratorError.failedToCreateSiteMapFile(outputUrl)
        }
        
    }
    
    /// Adds new site map to the source data
    private func addNewSiteMap(data: SiteMapData) {
        self.siteMaps.append(data)
    }
    
    /// Creates Crawler Directory
    private func createCrawlerFolder() throws {
        /// Crawler content generation
        let generator = CrawlerGenerator(site: site)
        let content = generator.generateCrawlers()
        
        /// Robots file path
        let outputUrl = buildDirectory.appending(path: "Robots.txt")
        
        /// Writes content to Robot file path
        do {
            try content.write(to: outputUrl, atomically: true, encoding: .utf8)
        } catch {
            throw SiteGeneratorError.failedToCreateCrawlerFile(outputUrl)
        }
    }
}
