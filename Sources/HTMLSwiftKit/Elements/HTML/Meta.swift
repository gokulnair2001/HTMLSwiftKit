//
//  Meta.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 02/04/24.
//

import Foundation


struct Meta: HTMLBlock {
    
    var content: String = ""
    
    private init() { }
    
    init(charset: String) {
        self.init()
        self.content = "<meta charset='\(charset)'>"
    }
    
    init(name: String, content: String) {
        self.init()
        self.content = "<meta name='\(name)' content='\(content)'>"
    }
}
