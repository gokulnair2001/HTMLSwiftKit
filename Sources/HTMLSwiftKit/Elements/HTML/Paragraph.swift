//
//  Paragraph.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 30/03/24.
//

import Foundation


/// Paragraph modifier defines a paragraph of text
public struct Paragraph: HTMLBlock {
    
    public var content: String = ""
    
    public init(_ text: String) {
        self.content = "<p> \(text) </p>"
    }
    
    public init(cssClass: CSSBlock, _ text: String) {
        self.content = "<p class='\(cssClass.className)'> \(text) </p>"
    }
    
    public init(@CSSModifierBuilder _ style: () -> [CSSModifier], _ text: String) {
        self.content = "<p style='\(generateCSSInlineCode(cssModifiers: style()))'> \(text) </p>"
    }
    
    public init(@HtmlBlockBuilder _ htmlBlock: () -> [HTMLBlock]) {
        self.content = "<p> \(generateSubCodeBlocks(htmlBlock: htmlBlock())) </p>"
    }
    
    public init(cssClass: CSSBlock, @HtmlBlockBuilder _ htmlBlock: () -> [HTMLBlock]) {
        self.content = "<p class='\(cssClass.className)'> \(generateSubCodeBlocks(htmlBlock: htmlBlock())) </p>"
    }
    
    public init(@CSSModifierBuilder _ style: () -> [CSSModifier], @HtmlBlockBuilder _ htmlBlock: () -> [HTMLBlock]) {
        self.content = "<p style='\(generateCSSInlineCode(cssModifiers: style()))'> \(generateSubCodeBlocks(htmlBlock: htmlBlock())) </p>"
    }
    
}
