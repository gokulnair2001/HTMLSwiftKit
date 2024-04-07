//
//  Footer.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 02/04/24.
//

import Foundation


public struct Footer: HTMLBlock {
    
    public var content: String = ""
    
    public init(@HtmlBlockBuilder _ htmlBlock: () -> [HTMLBlock]) {
        self.content = "<footer>\(generateSubCodeBlocks(htmlBlock: htmlBlock()))</footer>"
    }
    
}
