//
//  Mark.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 02/04/24.
//

import Foundation


public struct Mark: HTMLBlock {
    
    public var content: String
    
    init(_ text: String) {
        self.content = "<mark> \(text) </mark>"
    }
}
