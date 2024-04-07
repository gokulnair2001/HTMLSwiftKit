//
//  Mark.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 02/04/24.
//

import Foundation


struct Mark: HTMLBlock {
    
    var content: String
    
    init(_ text: String) {
        self.content = "<mark> \(text) </mark>"
    }
}
