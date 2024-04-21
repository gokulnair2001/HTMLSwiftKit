//
//  Cite.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


/// Cite tag is used to identify the source of a quote.
public struct Cite: HTMLBlock {
    
    public var content: String
    
    public init(_ text: String) {
        self.content = "<cite> \(text) </cite>"
    }
}
