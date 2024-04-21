//
//  Image.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


/// Image modifier to add images to html page
public struct Image: HTMLBlock {
    
    public var content: String = ""
    
    private init() {}
    
    /// Default init to add image
    public init(src: String, alt: String, _ width: Int? = nil, _ height: Int? = nil) {
        self.init()
        self.content = generateImageBlockCode(source: src, alternative: alt, width: width, height: height, style: nil)
    }
    
    /// Use this init to add styling to image
    public init(src: String, alt: String, @CSSModifierBuilder _ style: () -> [CSSModifier]) {
        self.init()
        self.content = generateImageBlockCode(source: src, alternative: alt, width: nil, height: nil, style: style())
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
