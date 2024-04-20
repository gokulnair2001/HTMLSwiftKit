//
//  CSSBlock.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


/// CSS Type used to understand which form of CSS needs to be generated
public enum CSSType {
    /// Source type CSS are used when created CSS is applied on any source tag
    /// Want to create CSS for Button, Divider, Heading etc, set CSS type to Source
    case source
    
    /// Custom type CSS is used when created CSS is a custom class
    /// Use this when any form of custom CSS needs to be used
    case custom
}


/// Any custom CSS created should implement this protocol
/// Add all the essential details to configure your CSS
public protocol CSSBlock {
    
    /// CSS name
    /// Make sure you explicitly provide a CSS name if the Swift struct or class has a different name, as the struct name is used as the default CSS name.
    var className: String { get }
    
    /// CSS Type to be generated
    /// By default every CSS is custom type
    var cssType: CSSType { get }
    
    /// All CSS modifiers to be applied
    @CSSModifierBuilder var content: [any CSSModifier] { get }
    
    /// CSS Code block generation
    func generateSubCodeBlocks() -> String
    
}

/// Default Implementation
public extension CSSBlock {
    
    /// Be cautious about the name you provide to Swift CSS Block, since this is the default name for your CSS Block
    var className: String {
        return String(describing: type(of: self))
    }
    
    /// By default every CSS is custom type
    var cssType: CSSType {
        return .custom
    }
    
    func generateSubCodeBlocks() -> String {
        
        let code = content.reduce("") { partialResult, block in
            return partialResult + "\n\(block.content)"
        }
        
        switch cssType {
            
        case .source:
            return """
            \(className) { \(code)
            }
            """
            
        case .custom:
            return """
            .\(className) { \(code)
            }
            """
        }
    }
    
}
