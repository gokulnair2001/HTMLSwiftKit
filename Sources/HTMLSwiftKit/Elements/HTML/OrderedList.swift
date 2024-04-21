//
//  OrderedList.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


/// OrderedList modifier is used  to define an ordered list
public struct OrderedList: HTMLBlock {
    
    public var content: String = ""
    
    public init(@HtmlBlockBuilder _ htmlBlock: () -> [HTMLBlock]) {
        self.content = "<ol> \(generateSubCodeBlocks(htmlBlock: htmlBlock())) </ol>"
    }
    
}
