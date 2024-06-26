//
//  TextTransform.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 02/04/24.
//

import Foundation


/// TextTransform modifier transforms texts with the provided transformer
public struct TextTransform: CSSModifier {
    
    /// Supported Transform types
    public enum Transform: String {
        case none
        case uppercase
        case lowercase
        case capitalize
        case initial
        case inherit
    }
    
    public var content: String
    
    public init(_ type: Transform) {
        self.content = "text-transform: \(type.rawValue);"
    }
}
