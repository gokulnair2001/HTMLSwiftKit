//
//  Color.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


/// Color modifier is used to add color on any element
public struct Color: CSSModifier {
    
    public var content: String
    
    public init(_ color: String) {
        self.content = "color: \(color);"
    }
    
}
