//
//  Font.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


/// FontSize modifier is used to add text size
public struct FontSize: CSSModifier {
    
    public var content: String
    
    public init(_ size: Int) {
        self.content = "font-size: \(size)px;"
    }
    
}
