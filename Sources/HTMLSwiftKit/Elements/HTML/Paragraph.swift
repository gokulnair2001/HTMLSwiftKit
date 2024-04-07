//
//  Paragraph.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 30/03/24.
//

import Foundation


public struct Paragraph: HTMLBlock {
    
    public var content: String
    
    init(_ text: String) {
        self.content = "<p> \(text) </p>"
    }
    
    public init(_ htmlBlock: [HTMLBlock] = []) {
        self.init("")
        self.content = generateSubCodeBlocks(htmlBlock: htmlBlock)
    }
    
}
