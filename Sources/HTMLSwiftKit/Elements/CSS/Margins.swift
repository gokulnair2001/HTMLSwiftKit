//
//  Margins.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


/// Margins modifiers sets Margins for the element
public struct Margins: CSSModifier {
    
    public var content: String
    
    public init(_ size: Int) {
        self.content = "margin: \(size)px;"
    }
    
}
