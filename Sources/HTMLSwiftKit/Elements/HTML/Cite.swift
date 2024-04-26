//
//  Cite.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


/// Cite tag is used to identify the source of a quote.
public struct Cite: HTMLBlock {
    
    public var content: String = ""
    
    public init(_ text: String) {
        self.content = "<cite> \(text) </cite>"
    } 
    
    public init(cssClass: CSSBlock, _ text: String) {
        self.content = "<cite class='\(cssClass.className)'> \(text) </cite>"
    }
    
    public init(@CSSModifierBuilder _ style: () -> [CSSModifier], _ text: String) {
        self.content = "<cite style='\(generateCSSInlineCode(cssModifiers: style()))'> \(text) </cite>"
    }
    
    public init(@HtmlBlockBuilder _ htmlBlock: () -> [HTMLBlock]) {
        self.content = "<cite> \(generateSubCodeBlocks(htmlBlock: htmlBlock())) </cite>"
    }
    
    public init(cssClass: CSSBlock, @HtmlBlockBuilder _ htmlBlock: () -> [HTMLBlock]) {
        self.content = "<cite class='\(cssClass.className)'> \(generateSubCodeBlocks(htmlBlock: htmlBlock())) </cite>"
    }
    
    public init(@CSSModifierBuilder _ style: () -> [CSSModifier], @HtmlBlockBuilder _ htmlBlock: () -> [HTMLBlock]) {
        self.content = "<cite style='\(generateCSSInlineCode(cssModifiers: style()))'> \(generateSubCodeBlocks(htmlBlock: htmlBlock())) </cite>"
    }
}
