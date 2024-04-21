//
//  Mark.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 02/04/24.
//

import Foundation


/// Mark modifier is used to mark or highlight text that is of special interest or relevance
public struct Mark: HTMLBlock {
    
    public var content: String
    
    public init(_ text: String) {
        self.content = "<mark> \(text) </mark>"
    }
}
