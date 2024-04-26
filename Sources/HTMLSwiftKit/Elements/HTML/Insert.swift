//
//  Insert.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


/// Insert modifier defines a text that has been inserted into a document
public struct Insert: HTMLBlock {
    
    public var content: String = ""
    
    public init(_ text: String) {
        self.content = "<ins> \(text) </ins>"
    }
    
    public init(cssClass: CSSBlock, _ text: String) {
        self.content = "<ins class='\(cssClass.className)'> \(text) </ins>"
    }
    
    public init(@CSSModifierBuilder _ style: () -> [CSSModifier], _ text: String) {
        self.content = "<ins style='\(generateCSSInlineCode(cssModifiers: style()))'> \(text) </ins>"
    }
    
    public init(@HtmlBlockBuilder _ htmlBlock: () -> [HTMLBlock]) {
        self.content = "<ins> \(generateSubCodeBlocks(htmlBlock: htmlBlock())) </ins>"
    }
    
    public init(cssClass: CSSBlock, @HtmlBlockBuilder _ htmlBlock: () -> [HTMLBlock]) {
        self.content = "<ins class='\(cssClass.className)'> \(generateSubCodeBlocks(htmlBlock: htmlBlock())) </ins>"
    }
    
    public init(@CSSModifierBuilder _ style: () -> [CSSModifier], @HtmlBlockBuilder _ htmlBlock: () -> [HTMLBlock]) {
        self.content = "<ins style='\(generateCSSInlineCode(cssModifiers: style()))'> \(generateSubCodeBlocks(htmlBlock: htmlBlock())) </ins>"
    }
}
