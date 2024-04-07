//
//  Style.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


struct Style: HTMLBlock {
    
    private var cssCode: String = ""
    
    var content: String {
        return "<style> \(cssCode) </style>"
    }
    
    private init() { }
    
    init(_ cssBlock: [CSSBlock]) {
        self.init()
        self.cssCode = generateCSSCodeBlock(cssBlock: cssBlock)
    }
    
    init(_ cssBlock: CSSBlock) {
        self.init()
        self.cssCode = cssBlock.generateSubCodeBlocks()
    }
}
