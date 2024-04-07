//
//  BackgroundColor.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation

struct BackgroundColor: CSSModifier {
    
    var content: String
    
    init(color: String) {
        self.content = "background-color: \(color);"
    }
}
