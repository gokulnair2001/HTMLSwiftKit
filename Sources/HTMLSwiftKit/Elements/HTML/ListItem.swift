//
//  ListItem.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


public struct ListItem: HTMLBlock {
    
    public var content: String
    
    public init(_ text: String) {
        self.content = "<li> \(text) </li>"
    }
}
