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
    
    public init(cssClass: CSSBlock, _ text: String) {
        self.content = "<pre class='\(cssClass.className)'> \(text) </pre>"
    }
    
    public init(@CSSModifierBuilder _ style: () -> [CSSModifier], _ text: String) {
        self.content = "<pre style='\(generateCSSInlineCode(cssModifiers: style()))'> \(text) </pre>"
    }
    
    public init(@HtmlBlockBuilder _ htmlBlock: () -> [HTMLBlock]) {
        self.content = "<pre> \(generateSubCodeBlocks(htmlBlock: htmlBlock())) </pre>"
    }
    
    public init(cssClass: CSSBlock, @HtmlBlockBuilder _ htmlBlock: () -> [HTMLBlock]) {
        self.content = "<pre class='\(cssClass.className)'> \(generateSubCodeBlocks(htmlBlock: htmlBlock())) </pre>"
    }
    
    public init(@CSSModifierBuilder _ style: () -> [CSSModifier], @HtmlBlockBuilder _ htmlBlock: () -> [HTMLBlock]) {
        self.content = "<pre style='\(generateCSSInlineCode(cssModifiers: style()))'> \(generateSubCodeBlocks(htmlBlock: htmlBlock())) </pre>"
    }
}
