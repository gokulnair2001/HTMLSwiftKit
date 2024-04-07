//
//  FontFamily.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


public struct FontFamily: CSSModifier {
    
    public var content: String
    
    init(_ family: String) {
        self.content = "font-family: \(family);"
    }
    
}

