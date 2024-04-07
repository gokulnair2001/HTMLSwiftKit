//
//  PageGenerator.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 04/04/24.
//

import Foundation
/*
 - A generator class which will set a specific path in local machine and build and store all the files.
 
 - The generator will get a specific path, if required using the same links tag will work
 
 - Need to think through how to add local image support
 */

public class PageGenerator {
    
    var site: WebSite
    
    var rootDirectory: URL
    
    var buildDirectory: URL
    
    var assetsDirectory: URL
    
    var siteMaps: [SiteMapData] = []
    
    private let fileManager = FileManager.default
    
    init(site: WebSite, rootURL: URL, buildDirectoryPath: String = "Build") {
        self.site = site
        self.rootDirectory = rootURL
        
        buildDirectory = rootDirectory.appending(path: buildDirectoryPath)
        assetsDirectory = rootDirectory.appending(path: "Assets")
    }
    
    private func generate() throws {
        try clearBuildFolder()
        try createHTMLFolder()
        try createAssetsFolder()
        try createCrawlerFolder()
    }
    
    /*
     1. clear build file method
     2. Create HTML Build file
     3. Create Assets doc
     4. generate siteMap
     */
    
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
                    try self.write(page.generateCodeBlock(), fileName: "\(page.name).html", to: buildDirectory)
                }
            }
            
        } catch {
            throw PageGeneratorError.failedToGeneratePage
        }
    }
    
    private func write(_ string: String, fileName: String, to directory: URL, priority: Int = 0) throws {
        
        do {
            try fileManager.createDirectory(at: directory, withIntermediateDirectories: true)
        } catch {
            throw PageGeneratorError.failedToCreateBuildDirectory(directory)
        }
        
        let outputURL = directory.appending(path: fileName)
        
        do {
            try string.write(to: outputURL, atomically: true, encoding: .utf8)
            self.addNewSiteMap(url: outputURL, priority: priority)
            
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
    
    private func addNewSiteMap(url: URL, priority: Int) {
        self.siteMaps.append(SiteMapData(url: url, priority: priority))
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
