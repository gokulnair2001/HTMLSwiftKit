//
//  Paragraph.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 30/03/24.
//

import Foundation


struct Paragraph: HTMLBlock {
    
    var content: String
    
    init(_ text: String) {
        self.content = "<p> \(text) </p>"
    }
    
    init(_ htmlBlock: [HTMLBlock] = []) {
        self.init("")
        self.content = generateSubCodeBlocks(htmlBlock: htmlBlock)
    }
    
}
