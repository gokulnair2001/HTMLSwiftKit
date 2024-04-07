//
//  DescriptionList.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


public struct DescriptionList: HTMLBlock {
    
    public var content: String = ""
    
    public init(_ htmlBlock: [HTMLBlock] = []) {
        self.content = "<dl> \(generateSubCodeBlocks(htmlBlock: htmlBlock)) </dl>"
    }
    
}
