//
//  OrderedList.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


struct OrderedList: HTMLBlock {
    
    var content: String = ""
    
    init(_ htmlBlock: [HTMLBlock] = []) {
        self.content = "<ol> \(generateSubCodeBlocks(htmlBlock: htmlBlock)) </ol>"
    }
    
}
