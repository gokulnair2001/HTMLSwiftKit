//
//  Mark.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 02/04/24.
//

import Foundation


/// Mark modifier is used to mark or highlight text that is of special interest or relevance
public struct Mark: HTMLBlock {
    
    public var content: String = ""
    
    public init(_ text: String) {
        self.content = "<mark> \(text) </mark>"
    }
    
    public init(cssClass: CSSBlock, _ text: String) {
        self.content = "<mark class='\(cssClass.className)'> \(text) </mark>"
    }
    
    public init(@CSSModifierBuilder _ style: () -> [CSSModifier], _ text: String) {
        self.content = "<mark style='\(generateCSSInlineCode(cssModifiers: style()))'> \(text) </mark>"
    }
    
    public init(@HtmlBlockBuilder _ htmlBlock: () -> [HTMLBlock]) {
        self.content = "<mark> \(generateSubCodeBlocks(htmlBlock: htmlBlock())) </mark>"
    }
    
    public init(cssClass: CSSBlock, @HtmlBlockBuilder _ htmlBlock: () -> [HTMLBlock]) {
        self.content = "<mark class='\(cssClass.className)'> \(generateSubCodeBlocks(htmlBlock: htmlBlock())) </mark>"
    }
    
    public init(@CSSModifierBuilder _ style: () -> [CSSModifier], @HtmlBlockBuilder _ htmlBlock: () -> [HTMLBlock]) {
        self.content = "<mark style='\(generateCSSInlineCode(cssModifiers: style()))'> \(generateSubCodeBlocks(htmlBlock: htmlBlock())) </mark>"
    }
}
