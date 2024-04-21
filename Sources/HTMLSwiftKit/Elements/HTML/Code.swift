//
//  Code.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


/// Code modifier used to define a piece of computer code
public struct Code: HTMLBlock {
    
    public var content: String
    
    public init(_ text: String) {
        self.content = "<code> \(text) </code>"
    }
}
