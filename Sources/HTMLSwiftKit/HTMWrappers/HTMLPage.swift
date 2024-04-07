//
//  HTMLPage.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 29/03/24.
//

import SwiftUI


public protocol HTMLPage: HTMLWrapper {
    
    var name: String { get }
    
    @BlockBuilder<HTMLBlock> var htmlContent: [any HTMLBlock] { get }

    func generateCodeBlock() -> String
}

public extension HTMLPage {
    
    var name: String {
        return String(describing: type(of: self))
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

