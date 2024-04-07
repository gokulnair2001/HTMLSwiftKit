//
//  Image.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


struct Image: HTMLBlock {
    
    var content: String = ""
    
    private init() {}
    
    init(src: String, alt: String, _ width: Int? = nil, _ height: Int? = nil) {
        self.init()
        self.content = generateImageBlockCode(source: src, alternative: alt, width: width, height: height, style: nil)
    }
    
    init(src: String, alt: String, style: [CSSModifier]) {
        self.init()
        self.content = generateImageBlockCode(source: src, alternative: alt, width: nil, height: nil, style: style)
    }
    
    func generateImageBlockCode(source: String, alternative: String?, width: Int?, height: Int?, style: [CSSModifier]?) -> String {
        
        var code: String = "src='\(source)'"
        
        if let alternative,  !alternative.isBlank() {
            code += "alt='\(alternative)'"
        }
        
        if let width {
            code += "width='\(width)'"
        }
        
        if let height {
            code += "height='\(height)'"
        }
        
        if let style {
            code += "style='\(generateCSSInlineCode(cssModifiers: style))'"
        }
        
        return "<img \(code)>"
    }
}
