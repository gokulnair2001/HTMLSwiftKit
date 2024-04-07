//
//  BackgroundColor.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation

public struct BackgroundColor: CSSModifier {
    
    public var content: String
    
    init(color: String) {
        self.content = "background-color: \(color);"
    }
}
