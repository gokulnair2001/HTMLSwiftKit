//
//  Head.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


public struct Head: HTMLBlock {
    
    public var content: String = ""
    
    public init(_ text: String) {
        self.content = "<head> \(text) </head>"
    }
    
    public init(cssClass: CSSBlock, _ text: String) {
        self.content = "<head class='\(cssClass.className)'> \(text) </head>"
    }
    
    public init(@CSSModifierBuilder _ style: () -> [CSSModifier], _ text: String) {
        self.content = "<head style='\(generateCSSInlineCode(cssModifiers: style()))'> \(text) </head>"
    }
    
    public init(@HtmlBlockBuilder _ htmlBlock: () -> [HTMLBlock]) {
        self.content = "<head> \(generateSubCodeBlocks(htmlBlock: htmlBlock())) </head>"
    }
    
    public init(cssClass: CSSBlock, @HtmlBlockBuilder _ htmlBlock: () -> [HTMLBlock]) {
        self.content = "<head class='\(cssClass.className)'> \(generateSubCodeBlocks(htmlBlock: htmlBlock())) </head>"
    }
    
    public init(@CSSModifierBuilder _ style: () -> [CSSModifier], @HtmlBlockBuilder _ htmlBlock: () -> [HTMLBlock]) {
        self.content = "<head style='\(generateCSSInlineCode(cssModifiers: style()))'> \(generateSubCodeBlocks(htmlBlock: htmlBlock())) </head>"
    }
    
}
