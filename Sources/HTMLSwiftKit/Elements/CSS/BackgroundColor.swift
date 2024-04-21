//
//  BackgroundColor.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


/// The BackgroundColor modifier is used to add background color for elements.
public struct BackgroundColor: CSSModifier {
    
    public var content: String
    
    public init(color: String) {
        self.content = "background-color: \(color);"
    }
}
