//
//  HTMLPage.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 29/03/24.
//

import SwiftUI


/// Every Webpage which is part of Website should be of HTMLPage
/// This protocol takes care there are all the necessary things for the page to get generated
public protocol HTMLPage {
    
    /// Name of the page
    var name: String { get }
    
    /// Site Map Priority of page
    var priority: Double { get }
    
    /// Sitemap crawling frequency
    /// Change frequency tells search engines how often a page's content updates
    var changeFreq: ChangeFrequency { get }
    
    /// Aggregated code block for the HTML page
    @HtmlBlockBuilder var htmlContent: [any HTMLBlock] { get }

    /// Generates code for the HTMLBlock
    func generateCodeBlock() -> String
}

/// Default implementations
public extension HTMLPage {
    
    /// By default Struct/Class name is used as HTML Page
    var name: String {
        return String(describing: type(of: self))
    }
    
    /// Default priority
    var priority: Double {
        return 0.6
    }
    
    /// Default frequency
    var changeFreq: ChangeFrequency {
        return .Never
    }
    
    /// SWIFT -> HTML Code generator
    func generateCodeBlock() -> String {
        
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

