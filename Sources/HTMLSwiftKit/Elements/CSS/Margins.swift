//
//  Margins.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


public struct Margins: CSSModifier {
    
    public var content: String
    
    init(_ size: Int) {
        self.content = "margin: \(size)px;"
    }
    
}
