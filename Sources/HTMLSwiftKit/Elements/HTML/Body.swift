//
//  Body.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 30/03/24.
//

import Foundation


/// Body modifier is similar to body tag in html
public struct Body: HTMLBlock {
    
    private var htmlCode: String = ""
    
    public var content: String {
        return "<body>\(htmlCode)</body>"
    }
    
    public init(@HtmlBlockBuilder _ htmlBlock: () -> [HTMLBlock]) {
        self.htmlCode = generateSubCodeBlocks(htmlBlock: htmlBlock())
    }

}
