//
//  Style.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


/// Style modifier is used to define style information (CSS) for a document
public struct Style: HTMLBlock {
    
    private var cssCode: String = ""
    
    public var content: String {
        return "<style> \(cssCode) </style>"
    }
    
    private init() { }
    
    public init(@CSSBlockBuilder _ cssBlock: () -> [CSSBlock]) {
        self.init()
        self.cssCode = generateCSSCodeBlock(cssBlock: cssBlock())
    }
    
    public init(_ cssBlock: CSSBlock) {
        self.init()
        self.cssCode = cssBlock.generateSubCodeBlocks()
    }
}
