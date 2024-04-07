//
//  TextAlignment.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


struct TextAlignment: CSSModifier {
    
    enum Alignment: String {
        case left
        case right
        case center
        case justify
        case start
        case end
    }
    
    var content: String
    
    init(_ alignment: Alignment) {
        self.content = "text-align: \(alignment.rawValue);"
    }
    
}
