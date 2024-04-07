//
//  Width.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


public struct Width: CSSModifier {
    
    public var content: String
    
    public init(_ size: Int) {
        self.content = "width: \(size)px;"
    }
    
}
