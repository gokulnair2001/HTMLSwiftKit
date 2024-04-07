//
//  ListItem.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


struct ListItem: HTMLBlock {
    
    var content: String
    
    init(_ text: String) {
        self.content = "<li> \(text) </li>"
    }
}
