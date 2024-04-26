//
//  Span.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 02/04/24.
//

import Foundation


public struct Span: HTMLBlock {
    
    public var content: String = ""
    
    private init() { }
    
    
    public init(cssClass: CSSBlock, _ text: String) {
        self.content = "<span class='\(cssClass.className)'> \(text) </span>"
    }
    
    public init(@CSSModifierBuilder _ style: () -> [CSSModifier], _ text: String) {
        self.content = "<span style='\(generateCSSInlineCode(cssModifiers: style()))'> \(text) </span>"
    }
    
    public init(@HtmlBlockBuilder _ htmlBlock: () -> [HTMLBlock]) {
        self.content = "<span> \(generateSubCodeBlocks(htmlBlock: htmlBlock())) </span>"
    }
    
    public init(cssClass: CSSBlock, @HtmlBlockBuilder _ htmlBlock: () -> [HTMLBlock]) {
        self.content = "<span class='\(cssClass.className)'> \(generateSubCodeBlocks(htmlBlock: htmlBlock())) </span>"
    }
    
    public init(@CSSModifierBuilder _ style: () -> [CSSModifier], @HtmlBlockBuilder _ htmlBlock: () -> [HTMLBlock]) {
        self.content = "<span style='\(generateCSSInlineCode(cssModifiers: style()))'> \(generateSubCodeBlocks(htmlBlock: htmlBlock())) </span>"
    }
}
