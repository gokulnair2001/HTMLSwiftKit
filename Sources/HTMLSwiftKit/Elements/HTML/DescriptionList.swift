//
//  DescriptionList.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


struct DescriptionList: HTMLBlock {
    
    var content: String = ""
    
    init(_ htmlBlock: [HTMLBlock] = []) {
        self.content = "<dl> \(generateSubCodeBlocks(htmlBlock: htmlBlock)) </dl>"
    }
    
}
