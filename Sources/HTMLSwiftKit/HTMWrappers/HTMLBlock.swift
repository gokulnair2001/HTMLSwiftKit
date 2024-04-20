//
//  HTMLBlock.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 29/03/24.
//

import Foundation


/// HTMLBlock Protocol
/// Every HTML element made in Swift needs to implement this protocol
/// Primarily this protocol makes sure that the SWIFT -> HTML site generator have all the necessary things to compute HTML code for the blocks
public protocol HTMLBlock {
    
    /// Code/Content of any HTML element
    var content: String { get }
    
    /// HTMLBlock code generator
    func generateSubCodeBlocks(htmlBlock: [HTMLBlock]) -> String
    
    /// CSSBlock code generator
    func generateCSSCodeBlock(cssBlock: [CSSBlock]) -> String
    
    /// CSSModifier block code generator
    func generateCSSInlineCode(cssModifiers: [CSSModifier]) -> String
}

/// Default implementations
public extension HTMLBlock {
    
    func generateSubCodeBlocks(htmlBlock: [HTMLBlock]) -> String {
        
        return htmlBlock.reduce("") { partialResult, block in
            return partialResult + "\(block.content)"
        }
    }
    
    func generateCSSCodeBlock(cssBlock: [CSSBlock]) -> String {
        return cssBlock.reduce("") { partialResult, block in
            return partialResult + "\n\n\(block.generateSubCodeBlocks())"
        }
    }
    
    func generateCSSInlineCode(cssModifiers: [CSSModifier]) -> String {
        return cssModifiers.reduce("") { partialResult, block in
            return partialResult + "\(block.content)\n"
        }
    }
}
