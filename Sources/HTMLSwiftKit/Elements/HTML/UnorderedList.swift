//
//  UnorderedList.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


struct UnorderedList: HTMLBlock {
    
    var content: String = ""
    
    init(_ htmlBlock: [HTMLBlock] = []) {
        self.content = "<ul> \(generateSubCodeBlocks(htmlBlock: htmlBlock)) </ul>"
    }
    
}
