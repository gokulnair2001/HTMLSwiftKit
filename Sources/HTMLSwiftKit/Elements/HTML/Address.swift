//
//  Address.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 30/03/24.
//

import Foundation


/// Address tag defines the contact information for the author/owner of a document or an article
public struct Address: HTMLBlock {
    
    public var content: String = ""
    
    public init(_ text: String) {
        self.content = "<address> \(text) </address>"
    }
    
    public init(cssClass: CSSBlock, _ text: String) {
        self.content = "<address class='\(cssClass.className)'> \(text) </address>"
    }
    
    public init(@CSSModifierBuilder _ style: () -> [CSSModifier], _ text: String) {
        self.content = "<address style='\(generateCSSInlineCode(cssModifiers: style()))'> \(text) </address>"
    }
    
    public init(@HtmlBlockBuilder _ htmlBlock: () -> [HTMLBlock]) {
        self.content = "<address> \(generateSubCodeBlocks(htmlBlock: htmlBlock())) </address>"
    }
    
    public init(cssClass: CSSBlock, @HtmlBlockBuilder _ htmlBlock: () -> [HTMLBlock]) {
        self.content = "<address class='\(cssClass.className)'> \(generateSubCodeBlocks(htmlBlock: htmlBlock())) </address>"
    }
    
    public init(@CSSModifierBuilder _ style: () -> [CSSModifier], @HtmlBlockBuilder _ htmlBlock: () -> [HTMLBlock]) {
        self.content = "<address style='\(generateCSSInlineCode(cssModifiers: style()))'> \(generateSubCodeBlocks(htmlBlock: htmlBlock())) </address>"
    }
    
}
