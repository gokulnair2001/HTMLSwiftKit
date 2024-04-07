//
//  TextAlignment.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


public struct TextAlignment: CSSModifier {
    
    public enum Alignment: String {
        case left
        case right
        case center
        case justify
        case start
        case end
    }
    
    public var content: String
    
    public init(_ alignment: Alignment) {
        self.content = "text-align: \(alignment.rawValue);"
    }
    
}
