//
//  Section.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 02/04/24.
//

import Foundation


public struct Section: HTMLBlock {
    
    public var content: String = ""
    
    
    public init(@HtmlBlockBuilder _ htmlBlock: () -> [HTMLBlock]) {
        self.content = "<section> \(generateSubCodeBlocks(htmlBlock: htmlBlock())) </section>"
    }

}
