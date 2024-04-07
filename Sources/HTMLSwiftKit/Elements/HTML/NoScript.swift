//
//  NoScript.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 02/04/24.
//

import Foundation


struct NoScript: HTMLBlock {
    
    var content: String
    
    init(code: String) {
        self.content = "<noscript> \(code) </noscript>"
    }
}
