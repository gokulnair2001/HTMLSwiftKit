//
//  FontFamily.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


/// Font family modifier helps to add various font type on text
public struct FontFamily: CSSModifier {
    
    public var content: String
    
    public init(_ family: String) {
        self.content = "font-family: \(family);"
    }
    
}

