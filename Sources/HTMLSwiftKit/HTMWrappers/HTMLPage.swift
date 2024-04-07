//
//  HTMLPage.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 29/03/24.
//

import SwiftUI


public protocol HTMLPage: HTMLWrapper {
    
    var name: String { get }
    
    var baseUrl: URL { get }
    
    var htmlContent : [HTMLBlock] { get }
    
    var crawler: CrawlerConfiguration { get }
    
    func generateCodeBlock() -> String
}

extension HTMLPage {
    
    public var name: String {
        return String(describing: type(of: self))
    }
    
    public var crawler: CrawlerConfiguration {
        return DefaultCrawlerConfiguration()
    }
    
    public func generateCodeBlock() -> String {
        
        let contentBlockCode = htmlContent.reduce("") { partialResult, block in
            return partialResult + "\(block.content)"
        }
        
        return """
        
        <!DOCTYPE html>
        <html>
        \(contentBlockCode)
        </html>
        
        """
    }
}

