//
//  CSSBlock.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation

public enum CSSType {
    case source
    case custom
}

public protocol CSSBlock {
    
    var className: String { get }
    
    var cssType: CSSType { get }
    
    @BlockBuilder<CSSModifier> var content: [any CSSModifier] { get }
    
    func generateSubCodeBlocks() -> String
    
}

public extension CSSBlock {
    
    var className: String {
        return String(describing: type(of: self))
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
