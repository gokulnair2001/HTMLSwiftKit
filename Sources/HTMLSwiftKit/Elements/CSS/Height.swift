//
//  Height.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


struct Height: CSSModifier {
    
    var content: String
    
    init(_ size: Int) {
        self.content = "height: \(size)px;"
    }
    
}
