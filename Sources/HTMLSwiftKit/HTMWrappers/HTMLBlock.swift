//
//  HTMLBlock.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 29/03/24.
//

import Foundation


public protocol HTMLBlock {
    
    var content: String { get }
    
    func generateSubCodeBlocks(htmlBlock: [HTMLBlock]) -> String
    
    func generateCSSCodeBlock(cssBlock: [CSSBlock]) -> String
    
    func generateCSSInlineCode(cssModifiers: [CSSModifier]) -> String
}

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
