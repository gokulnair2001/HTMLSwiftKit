//
//  Delete.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


/// Delete modifier is used to identify text that has been deleted from a document but retained to show the history of modifications made to the document
public struct Delete: HTMLBlock {
    
    public var content: String
    
    public init(_ text: String) {
        self.content = "<del> \(text) </del>"
    }
}
