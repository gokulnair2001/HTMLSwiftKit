//
//  Details.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


/// Details modifier specifies additional details that the user can open and close on demand
public struct Details: HTMLBlock {
    
    public var content: String = ""
    
    public init(@HtmlBlockBuilder _ htmlBlock: () -> [HTMLBlock]) {
        self.content = "<details> \(generateSubCodeBlocks(htmlBlock: htmlBlock())) </details>"
    }
    
}
