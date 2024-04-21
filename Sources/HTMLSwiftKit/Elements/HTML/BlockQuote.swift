//
//  BlockQuote.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 30/03/24.
//

import Foundation


/// BlockQuote tag specifies a section that is quoted from another source.
public struct BlockQuote: HTMLBlock {
    
    public var content: String
    
    public init(cite: String, section: String) {
        self.content = "<blockquote cite='\(cite)'> \(section) </blockquote>"
    }
}
