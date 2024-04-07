//
//  Meta.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 02/04/24.
//

import Foundation


public struct Meta: HTMLBlock {
    
    public var content: String = ""
    
    private init() { }
    
    public init(charset: String) {
        self.init()
        self.content = "<meta charset='\(charset)'>"
    }
    
    init(name: String, content: String) {
        self.init()
        self.content = "<meta name='\(name)' content='\(content)'>"
    }
}
