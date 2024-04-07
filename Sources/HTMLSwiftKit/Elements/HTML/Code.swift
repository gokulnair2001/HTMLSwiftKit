//
//  Code.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


public struct Code: HTMLBlock {
    
    public var content: String
    
    init(_ text: String) {
        self.content = "<code> \(text) </code>"
    }
}
