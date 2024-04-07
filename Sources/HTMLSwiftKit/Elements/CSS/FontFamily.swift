//
//  FontFamily.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


struct FontFamily: CSSModifier {
    
    var content: String
    
    init(_ family: String) {
        self.content = "font-family: \(family);"
    }
    
}

