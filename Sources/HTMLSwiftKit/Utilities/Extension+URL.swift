//
//  Extension+URL.swift
//
//
//  Created by Gokul Nair on 14/04/24.
//

import Foundation


extension URL {
    
    /// Package File locator
    public static func packageDirectory(from filePath: StaticString) throws -> URL {
        
        var currentURL = URL(filePath: filePath.description)
        
        repeat {
            currentURL.deleteLastPathComponent()
            let packageURL = currentURL.appendingPathComponent("Package.swift")
            
            if FileManager.default.fileExists(atPath: packageURL.path) {
                return packageURL.deletingLastPathComponent()
            }
        } while !currentURL.path.isEmpty
        
        throw SiteGeneratorError.packageDirectoryMissing
    }

    
}
