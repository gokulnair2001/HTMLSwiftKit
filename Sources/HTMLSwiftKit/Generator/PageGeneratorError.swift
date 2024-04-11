//
//  PageGeneratorError.swift
//
//
//  Created by Gokul Nair on 07/04/24.
//

import Foundation


enum PageGeneratorError: LocalizedError {
    
    case failedToClearBuildDirectory(URL)
    
    case failedToCreateBuildDirectory(URL)
    
    case failedToCreateAssetDirectory(URL)
    
    case failedToCreateSiteMapFile(URL)
    
    case failedToCreateCrawlerFile(URL)
    
    case failedToGeneratePage
    
    case packageDirectoryMissing
}
