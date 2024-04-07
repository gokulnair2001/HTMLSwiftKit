//
//  Hyperlink.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 30/03/24.
//

import Foundation


struct Hyperlink: HTMLBlock {
    
    var content: String
    
    init(href: String, _ text: String) {
        self.content = "<a href='\(href)'>\(text)</a>"
    }
}
