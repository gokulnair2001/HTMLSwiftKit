//
//  UnorderedList.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


/// UnorderedList modifier is used  to define an unordered list
public struct UnorderedList: HTMLBlock {
    
    public var content: String = ""
    
    public init() {
        self.init({  })
    }
    
    public init(@HtmlBlockBuilder _ htmlBlock: (() -> [HTMLBlock])) {
        self.content = "<ul> \(generateSubCodeBlocks(htmlBlock: htmlBlock())) </ul>"
    }
}
