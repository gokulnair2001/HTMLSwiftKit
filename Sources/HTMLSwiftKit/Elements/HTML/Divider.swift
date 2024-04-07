//
//  Divider.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


public struct Divider: HTMLBlock {
    
    public var content: String = ""
    
    private init() { }
    
    init(_ htmlBlock: [HTMLBlock] = []) {
        self.init()
        self.content = "<div> \(generateSubCodeBlocks(htmlBlock: htmlBlock)) </div>"
    }
    
    init(classType: String, _ htmlBlock: [HTMLBlock] = []) {
        self.init()
        let className = classType.isBlank() ? "" : " class='\(classType)'"
        self.content = "<div\(className)> \(generateSubCodeBlocks(htmlBlock: htmlBlock)) </div>"
    }
}
