//
//  Code.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


/// Code modifier used to define a piece of computer code
public struct Code: HTMLBlock {
    
    public var content: String = ""
    
    
    public init(_ text: String) {
        self.content = "<code> \(text) </code>"
    }
    
    public init(cssClass: CSSBlock, _ text: String) {
        self.content = "<code class='\(cssClass.className)'> \(text) </code>"
    }
    
    public init(@CSSModifierBuilder _ style: () -> [CSSModifier], _ text: String) {
        self.content = "<code style='\(generateCSSInlineCode(cssModifiers: style()))'> \(text) </code>"
    }
    
    public init(@HtmlBlockBuilder _ htmlBlock: () -> [HTMLBlock]) {
        self.content = "<code> \(generateSubCodeBlocks(htmlBlock: htmlBlock())) </code>"
    }
    
    public init(cssClass: CSSBlock, @HtmlBlockBuilder _ htmlBlock: () -> [HTMLBlock]) {
        self.content = "<code class='\(cssClass.className)'> \(generateSubCodeBlocks(htmlBlock: htmlBlock())) </code>"
    }
    
    public init(@CSSModifierBuilder _ style: () -> [CSSModifier], @HtmlBlockBuilder _ htmlBlock: () -> [HTMLBlock]) {
        self.content = "<code style='\(generateCSSInlineCode(cssModifiers: style()))'> \(generateSubCodeBlocks(htmlBlock: htmlBlock())) </code>"
    }
}
