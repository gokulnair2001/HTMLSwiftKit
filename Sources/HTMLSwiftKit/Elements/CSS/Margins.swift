//
//  Margins.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


struct Margins: CSSModifier {
    
    var content: String
    
    init(_ size: Int) {
        self.content = "margin: \(size)px;"
    }
    
}
