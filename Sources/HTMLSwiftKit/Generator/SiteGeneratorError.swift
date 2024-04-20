//
//  SiteGeneratorError.swift
//
//
//  Created by Gokul Nair on 07/04/24.
//

import Foundation

/// Site generation errors
enum SiteGeneratorError: LocalizedError {
    
    /// Build file deletion error
    case failedToClearBuildDirectory(URL)
    
    /// Build file creation error
    case failedToCreateBuildDirectory(URL)
    
    /// Asset file creation error
    case failedToCreateAssetDirectory(URL)
    
    /// Sitemap file creation error
    case failedToCreateSiteMapFile(URL)
    
    /// Crawler file creation error
    case failedToCreateCrawlerFile(URL)
    
    /// Page generation error
    case failedToGeneratePage(URL)
    
    /// Package Directory missing
    case packageDirectoryMissing
}
