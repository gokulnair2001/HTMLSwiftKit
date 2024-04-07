//
//  Font.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


struct FontSize: CSSModifier {
    
    var content: String
    
    init(_ size: Int) {
        self.content = "font-size: \(size)px;"
    }
    
}
