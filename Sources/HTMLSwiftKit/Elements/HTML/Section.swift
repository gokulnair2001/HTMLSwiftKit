//
//  Section.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 02/04/24.
//

import Foundation


/// Section modifier is used to group together related elements
public struct Section: HTMLBlock {
    
    public var content: String = ""
    
    
    public init(@HtmlBlockBuilder _ htmlBlock: () -> [HTMLBlock]) {
        self.content = "<section> \(generateSubCodeBlocks(htmlBlock: htmlBlock())) </section>"
    }

}
