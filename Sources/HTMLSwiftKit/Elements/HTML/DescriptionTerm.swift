//
//  DescriptionTerm.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


/// DescriptionTerm modifier is used to describe a term/name in a description list
public struct DescriptionTerm: HTMLBlock {
    
    public var content: String = ""
    
    public init(_ text: String) {
        self.content = "<dt> \(text) </dt>"
    }
    
    public init(cssClass: CSSBlock, _ text: String) {
        self.content = "<dt class='\(cssClass.className)'> \(text) </dt>"
    }
    
    public init(@CSSModifierBuilder _ style: () -> [CSSModifier], _ text: String) {
        self.content = "<dt style='\(generateCSSInlineCode(cssModifiers: style()))'> \(text) </dt>"
    }
    
    public init(@HtmlBlockBuilder _ htmlBlock: () -> [HTMLBlock]) {
        self.content = "<dt> \(generateSubCodeBlocks(htmlBlock: htmlBlock())) </dt>"
    }
    
    public init(cssClass: CSSBlock, @HtmlBlockBuilder _ htmlBlock: () -> [HTMLBlock]) {
        self.content = "<dt class='\(cssClass.className)'> \(generateSubCodeBlocks(htmlBlock: htmlBlock())) </dt>"
    }
    
    public init(@CSSModifierBuilder _ style: () -> [CSSModifier], @HtmlBlockBuilder _ htmlBlock: () -> [HTMLBlock]) {
        self.content = "<dt style='\(generateCSSInlineCode(cssModifiers: style()))'> \(generateSubCodeBlocks(htmlBlock: htmlBlock())) </dt>"
    }
}
