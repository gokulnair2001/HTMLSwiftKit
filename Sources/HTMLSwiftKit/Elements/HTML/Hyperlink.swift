//
//  Hyperlink.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 30/03/24.
//

import Foundation


/// Defines a hyperlink, which is used to link from one page to another
public struct Hyperlink: HTMLBlock {
    
    public var content: String
    
    public init(href: String, _ text: String) {
        self.content = "<a href='\(href)'>\(text)</a>"
    }
    
    public init(page: HTMLPage, _ text: String) {
        self.content = "<a href='\(page.name).html'>\(text)</a>"
    }
}
