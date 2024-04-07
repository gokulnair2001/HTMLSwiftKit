//
//  Color.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


public struct Color: CSSModifier {
    
    public var content: String
    
    public init(_ color: String) {
        self.content = "color: \(color);"
    }
    
}
