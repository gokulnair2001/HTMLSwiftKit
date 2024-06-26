//
//  Height.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


/// Height modifiers sets height for the element
public struct Height: CSSModifier {
    
    public var content: String
    
    public init(_ size: Int) {
        self.content = "height: \(size)px;"
    }
    
}
