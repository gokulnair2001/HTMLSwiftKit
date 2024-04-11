//
//  SiteGenerator.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 04/04/24.
//

import Foundation


public class SiteGenerator {
    
    private var site: WebSite
    
    private var rootDirectory: URL
    
    private var buildDirectory: URL
    
    private var assetsDirectory: URL
    
    private(set) var siteMaps: [SiteMapData] = []
    
    private let fileManager = FileManager.default
    
    public init(site: WebSite, buildDirectoryPath: String = "Build") throws {
        self.site = site
        self.rootDirectory = fileManager.urls(for: .documentDirectory, in: .userDomainMask).first!
        print("✅:\(rootDirectory.absoluteString)")
        buildDirectory = rootDirectory.appending(path: buildDirectoryPath)
        assetsDirectory = rootDirectory.appending(path: "Assets")
    }
    
    public func generate() throws {
        try clearBuildFolder()
        try createHTMLFolder()
        try createAssetsFolder()
        try createCrawlerFolder()
    }
    
    private func clearBuildFolder() throws {
        
        if fileManager.fileExists(atPath: buildDirectory.path()) {
            do {
                try fileManager.removeItem(at: buildDirectory)
            } catch {
                throw PageGeneratorError.failedToClearBuildDirectory(buildDirectory)
            }
        }
        
        do {
            try fileManager.createDirectory(at: buildDirectory, withIntermediateDirectories: false)
        } catch {
            throw PageGeneratorError.failedToClearBuildDirectory(buildDirectory)
        }
    }
    
    private func createHTMLFolder() throws {
        
        do {
            
            try site.pages.forEach { [weak self] page in
                
                guard let self else { return }
                
                do {
                    try self.write(page.generateCodeBlock(), fileName: "\(page.name).html", to: buildDirectory, priority: page.priority, changeFreq: page.changeFreq)
                }
            }
            
        } catch {
            throw PageGeneratorError.failedToGeneratePage
        }
    }
    
    private func write(_ string: String, fileName: String, to directory: URL, priority: Double = 0, changeFreq: ChangeFrequency = .Never) throws {
        
        do {
            try fileManager.createDirectory(at: directory, withIntermediateDirectories: true)
        } catch {
            throw PageGeneratorError.failedToCreateBuildDirectory(directory)
        }
        
        let outputURL = directory.appending(path: fileName)
        
        do {
            try string.write(to: outputURL, atomically: true, encoding: .utf8)
            self.addNewSiteMap(data: SiteMapData(url: outputURL, priority: priority, changeFrequency: changeFreq))
            
        } catch {
            throw PageGeneratorError.failedToCreateBuildDirectory(outputURL)
        }
    }
    
    private func createAssetsFolder() throws {
        
        guard fileManager.fileExists(atPath: assetsDirectory.path()) else {
            return
        }
        
        do {
            
            try fileManager.createDirectory(atPath: assetsDirectory.path(), withIntermediateDirectories: true)
            
        } catch {
            throw PageGeneratorError.failedToCreateAssetDirectory(assetsDirectory)
        }
    }
    
    private func createSiteMapFolder() throws {
        
        let siteMapGenerator = SiteMapGenerator(context: self)
        let content = siteMapGenerator.generateSiteMap()
        
        let outputUrl = buildDirectory.appending(path: "sitemap.xml")
        
        do {
            try content.write(to: outputUrl, atomically: true, encoding: .utf8)
        } catch {
            throw PageGeneratorError.failedToCreateSiteMapFile(outputUrl)
        }
        
    }
    
    private func addNewSiteMap(data: SiteMapData) {
        self.siteMaps.append(data)
    }
    
    private func createCrawlerFolder() throws {
        
        let generator = CrawlerGenerator(site: site)
        let content = generator.generateCrawlers()
        
        let outputUrl = buildDirectory.appending(path: "Robots.txt")
        
        do {
            try content.write(to: outputUrl, atomically: true, encoding: .utf8)
        } catch {
            throw PageGeneratorError.failedToCreateCrawlerFile(outputUrl)
        }
    }
}
