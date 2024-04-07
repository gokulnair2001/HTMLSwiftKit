//
//  Font.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


public struct FontSize: CSSModifier {
    
    public var content: String
    
    public init(_ size: Int) {
        self.content = "font-size: \(size)px;"
    }
    
}
