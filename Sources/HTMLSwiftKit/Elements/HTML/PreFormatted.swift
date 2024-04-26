//
//  PreFormatted.swift
//
//
//  Created by Gokul Nair on 26/04/24.
//

import Foundation


/// In PreFormatted tag, spaces and line breaks aren't ignored.
public struct PreFormatted: HTMLBlock {
    
    public var content: String = ""
    
    public init(_ text: String) {
        self.content = "<pre> \(text) </pre>"
    }
    
    public init(@HtmlBlockBuilder _ htmlBlock: () -> [HTMLBlock]) {
        self.content = "<pre> \(generateSubCodeBlocks(htmlBlock: htmlBlock())) </pre>"
    }
}
