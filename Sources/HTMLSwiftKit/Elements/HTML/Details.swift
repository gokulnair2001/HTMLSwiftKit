//
//  Details.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


public struct Details: HTMLBlock {
    
    
    public var content: String = ""
    
    init(_ htmlBlock: [HTMLBlock] = []) {
        self.content = "<details> \(generateSubCodeBlocks(htmlBlock: htmlBlock)) </details>"
    }
    
}
