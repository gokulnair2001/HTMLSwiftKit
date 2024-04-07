//
//  TextTransform.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 02/04/24.
//

import Foundation


public struct TextTransform: CSSModifier {
    
    public enum Transform: String {
        case none
        case uppercase
        case lowercase
        case capitalize
        case initial
        case inherit
    }
    
    public var content: String
    
    init(_ type: Transform) {
        self.content = "text-transform: \(type.rawValue);"
    }
}
