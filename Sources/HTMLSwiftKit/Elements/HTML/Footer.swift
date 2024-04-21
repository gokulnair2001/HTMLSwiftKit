//
//  Footer.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 02/04/24.
//

import Foundation


/// Footer modifier used to identify the footer of a page, document, article, or section
public struct Footer: HTMLBlock {
    
    public var content: String = ""
    
    public init(@HtmlBlockBuilder _ htmlBlock: () -> [HTMLBlock]) {
        self.content = "<footer>\(generateSubCodeBlocks(htmlBlock: htmlBlock()))</footer>"
    }
    
}
