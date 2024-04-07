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
    
    init(style: [CSSModifier], text: String) {
        self.init()
        self.content = "<span style='\(generateCSSInlineCode(cssModifiers: style))'>\(text)</span>"
    }
    
    init(style: CSSModifier, text: String) {
        self.init()
        self.content = "<span style='\(style.content)'>\(text)</span>"
    }
}
