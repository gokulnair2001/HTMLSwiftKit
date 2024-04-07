//
//  Width.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


struct Width: CSSModifier {
    
    var content: String
    
    init(_ size: Int) {
        self.content = "width: \(size)px;"
    }
    
}
