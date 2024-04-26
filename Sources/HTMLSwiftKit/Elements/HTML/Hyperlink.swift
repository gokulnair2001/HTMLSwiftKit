//
//  Hyperlink.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 30/03/24.
//

import Foundation


/// Defines a hyperlink, which is used to link from one page to another
public struct Hyperlink: HTMLBlock {
    
    public var content: String = ""
    
    public init(page: HTMLPage, _ text: String) {
        self.content = "<a href='\(page.name)'>\(text)</a>"
    }
    
    public init(cssClass: CSSBlock, page: HTMLPage, _ text: String) {
        self.content = "<a class='\(cssClass.className)' href='\(page.name)'> \(text) </a>"
    }
    
    public init(@CSSModifierBuilder _ style: () -> [CSSModifier], page: HTMLPage, _ text: String) {
        self.content = "<a style='\(generateCSSInlineCode(cssModifiers: style()))' href='\(page.name)'> \(text) </a>"
    }
}
