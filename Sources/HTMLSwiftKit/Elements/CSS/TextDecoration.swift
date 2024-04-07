//
//  TextDecoration.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 02/04/24.
//

import Foundation


public struct TextDecoration: CSSModifier {
    
    enum Decoration: String {
        case none
        case underline
        case overLine = "overline"
        case lineThrough = "line-through"
        case blink = "blink"
    }
    
    enum DecorationStyle: String {
        case solid
        case double
        case dotted
        case dashed
        case wavy
    }
    
    public var content: String
    
    init(_ decoration: Decoration...) {
        let computedDecorations = decoration.reduce("") { partialResult, decoration in
            return partialResult + " \(decoration.rawValue)"
        }
        self.content = "text-decoration: \(computedDecorations);"
    }
    
    init(color: String) {
        self.content = "text-decoration-color: \(color);"
    }
    
    init(style: DecorationStyle) {
        self.content = "text-decoration-style: \(style.rawValue);"
    }
}
