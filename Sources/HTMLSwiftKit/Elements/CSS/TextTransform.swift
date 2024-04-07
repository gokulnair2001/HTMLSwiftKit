//
//  TextTransform.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 02/04/24.
//

import Foundation


struct TextTransform: CSSModifier {
    
    enum Transform: String {
        case none
        case uppercase
        case lowercase
        case capitalize
        case initial
        case inherit
    }
    
    var content: String
    
    init(_ type: Transform) {
        self.content = "text-transform: \(type.rawValue);"
    }
}
