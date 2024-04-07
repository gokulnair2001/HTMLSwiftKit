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
    
    var pages: [HTMLPage]
    
    var rootDirectory: URL
    
    var buildDirectory: URL
    
    var assetsDirectory: URL
    
    init(pages: [HTMLPage], rootURL: URL, buildDirectoryPath: String = "Build") {
        self.pages = pages
        self.rootDirectory = rootURL
        
        buildDirectory = rootDirectory.appending(path: buildDirectoryPath)
        assetsDirectory = rootDirectory.appending(path: "Assets")
    }
    
    private func generate() {
        pages.forEach { page in
            page.htmlContent.forEach { content in
                print("\(content.content)\n")
            }
        }
    }
    
    /*
     1. clear build file method
     2. Create HTML Build file
     3. Create Assets doc
     */
    
    private func clearBuildFolder() throws {
        if FileManager.default.fileExists(atPath: buildDirectory.path()) {
            do {
                try FileManager.default.removeItem(at: buildDirectory)
            } catch {
                throw PageGeneratorError.failedToClearBuildDirectory(buildDirectory)
            }
        }

        do {
            try FileManager.default.createDirectory(at: buildDirectory, withIntermediateDirectories: false)
        } catch {
            throw PageGeneratorError.failedToClearBuildDirectory(buildDirectory)
        }
    }
    
    private func createHTMLFolder() {
        
    }
    
    private func write(_ string: String, to directory: URL,  priority: Double) throws {

        do {
            try FileManager.default.createDirectory(at: directory, withIntermediateDirectories: true)
        } catch {
            throw PageGeneratorError.failedToCreateBuildDirectory(directory)
        }

        let outputURL = directory.appending(path: "index.html")

        do {
            try string.write(to: outputURL, atomically: true, encoding: .utf8)
        } catch {
            throw PageGeneratorError.failedToCreateBuildDirectory(outputURL)
        }
    }

}
