//
//  BlockQuote.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 30/03/24.
//

import Foundation


public struct BlockQuote: HTMLBlock {
    
    public var content: String
    
    init(cite: String, section: String) {
        self.content = "<blockquote cite='\(cite)'> \(section) </blockquote>"
    }
}
