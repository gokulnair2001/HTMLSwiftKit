//
//  Details.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


struct Details: HTMLBlock {
    
    
    var content: String = ""
    
    init(_ htmlBlock: [HTMLBlock] = []) {
        self.content = "<details> \(generateSubCodeBlocks(htmlBlock: htmlBlock)) </details>"
    }
    
}
