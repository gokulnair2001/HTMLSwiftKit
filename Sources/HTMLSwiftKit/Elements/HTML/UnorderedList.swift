//
//  UnorderedList.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


public struct UnorderedList: HTMLBlock {
    
    public var content: String = ""
    
    init(_ htmlBlock: [HTMLBlock] = []) {
        self.content = "<ul> \(generateSubCodeBlocks(htmlBlock: htmlBlock)) </ul>"
    }
    
}
