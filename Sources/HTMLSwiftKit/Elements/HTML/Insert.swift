//
//  Insert.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


/// Insert modifier defines a text that has been inserted into a document
public struct Insert: HTMLBlock {
    
    public var content: String
    
    public init(_ text: String) {
        self.content = "<ins> \(text) </ins>"
    }
}
