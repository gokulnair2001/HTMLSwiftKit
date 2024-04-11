//
//  HTMLPage.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 29/03/24.
//

import SwiftUI


public protocol HTMLPage {
    
    var name: String { get }
    
    var priority: Double { get }
    
    var changeFreq: ChangeFrequency { get }
    
    @HtmlBlockBuilder var htmlContent: [any HTMLBlock] { get }

    func generateCodeBlock() -> String
}

public extension HTMLPage {
    
    var name: String {
        return String(describing: type(of: self))
    }
    
    var priority: Double {
        return 0.6
    }
    
    var changeFreq: ChangeFrequency {
        return .Never
    }
    
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

