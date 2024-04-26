//
//  Delete.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


/// Delete modifier is used to identify text that has been deleted from a document but retained to show the history of modifications made to the document
public struct Delete: HTMLBlock {
    
    public var content: String = ""
    
    
    public init(_ text: String) {
        self.content = "<del> \(text) </del>"
    }
    
    public init(cssClass: CSSBlock, _ text: String) {
        self.content = "<del class='\(cssClass.className)'> \(text) </del>"
    }
    
    public init(@CSSModifierBuilder _ style: () -> [CSSModifier], _ text: String) {
        self.content = "<del style='\(generateCSSInlineCode(cssModifiers: style()))'> \(text) </del>"
    }
    
    public init(@HtmlBlockBuilder _ htmlBlock: () -> [HTMLBlock]) {
        self.content = "<del> \(generateSubCodeBlocks(htmlBlock: htmlBlock())) </del>"
    }
    
    public init(cssClass: CSSBlock, @HtmlBlockBuilder _ htmlBlock: () -> [HTMLBlock]) {
        self.content = "<del class='\(cssClass.className)'> \(generateSubCodeBlocks(htmlBlock: htmlBlock())) </del>"
    }
    
    public init(@CSSModifierBuilder _ style: () -> [CSSModifier], @HtmlBlockBuilder _ htmlBlock: () -> [HTMLBlock]) {
        self.content = "<del style='\(generateCSSInlineCode(cssModifiers: style()))'> \(generateSubCodeBlocks(htmlBlock: htmlBlock())) </del>"
    }
}
