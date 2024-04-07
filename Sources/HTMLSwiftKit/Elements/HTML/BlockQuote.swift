//
//  BlockQuote.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 30/03/24.
//

import Foundation


struct BlockQuote: HTMLBlock {
    
    var content: String
    
    init(cite: String, section: String) {
        self.content = "<blockquote cite='\(cite)'> \(section) </blockquote>"
    }
}
