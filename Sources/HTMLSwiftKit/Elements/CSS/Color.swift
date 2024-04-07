//
//  Color.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


struct Color: CSSModifier {
    
    var content: String
    
    init(_ color: String) {
        self.content = "color: \(color);"
    }
    
}
