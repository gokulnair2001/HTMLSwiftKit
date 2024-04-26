//
//  Description.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


/// Description modifier used to describe a term/name in a description list
public struct Description: HTMLBlock {
    
    public var content: String = ""
    
    
    public init(_ text: String) {
            self.content = "<dd> \(text) </dd>"
        }
        
        public init(cssClass: CSSBlock, _ text: String) {
            self.content = "<dd class='\(cssClass.className)'> \(text) </dd>"
        }
        
        public init(@CSSModifierBuilder _ style: () -> [CSSModifier], _ text: String) {
            self.content = "<dd style='\(generateCSSInlineCode(cssModifiers: style()))'> \(text) </dd>"
        }
        
        public init(@HtmlBlockBuilder _ htmlBlock: () -> [HTMLBlock]) {
            self.content = "<dd> \(generateSubCodeBlocks(htmlBlock: htmlBlock())) </dd>"
        }
        
        public init(cssClass: CSSBlock, @HtmlBlockBuilder _ htmlBlock: () -> [HTMLBlock]) {
            self.content = "<dd class='\(cssClass.className)'> \(generateSubCodeBlocks(htmlBlock: htmlBlock())) </dd>"
        }
        
        public init(@CSSModifierBuilder _ style: () -> [CSSModifier], @HtmlBlockBuilder _ htmlBlock: () -> [HTMLBlock]) {
            self.content = "<dd style='\(generateCSSInlineCode(cssModifiers: style()))'> \(generateSubCodeBlocks(htmlBlock: htmlBlock())) </dd>"
        }
}
