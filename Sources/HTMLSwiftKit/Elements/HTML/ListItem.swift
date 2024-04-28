//
//  ListItem.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


/// ListItem modifier is used to represent an item in a list.
public struct ListItem: HTMLBlock {
    
    public var content: String = ""
    
    
    public init(_ text: String) {
        self.content = "<li> \(text) </li>"
    }
    
    public init(cssClass: CSSBlock, _ text: String) {
        self.content = "<li class='\(cssClass.className)'> \(text) </li>"
    }
    
    public init(@CSSModifierBuilder _ style: () -> [CSSModifier], _ text: String) {
        self.content = "<li style='\(generateCSSInlineCode(cssModifiers: style()))'> \(text) </li>"
    }
    
    public init(@HtmlBlockBuilder _ htmlBlock: () -> [HTMLBlock]) {
        self.content = "<li> \(generateSubCodeBlocks(htmlBlock: htmlBlock())) </li>"
    }
    
    public init(cssClass: CSSBlock, @HtmlBlockBuilder _ htmlBlock: () -> [HTMLBlock]) {
        self.content = "<li class='\(cssClass.className)'> \(generateSubCodeBlocks(htmlBlock: htmlBlock())) </li>"
    }
    
    public init(@CSSModifierBuilder _ style: () -> [CSSModifier], @HtmlBlockBuilder _ htmlBlock: () -> [HTMLBlock]) {
        self.content = "<li style='\(generateCSSInlineCode(cssModifiers: style()))'> \(generateSubCodeBlocks(htmlBlock: htmlBlock())) </li>"
    }
}
