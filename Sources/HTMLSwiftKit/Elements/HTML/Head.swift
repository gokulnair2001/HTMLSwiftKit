//
//  Head.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


struct Head: HTMLBlock {
    
    var content: String
    
    init(_ text: String) {
        self.content = "<head> \(text) </head>"
    }
}
