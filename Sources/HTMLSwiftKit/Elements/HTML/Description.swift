//
//  Description.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


struct Description: HTMLBlock {
    
    var content: String
    
    init(_ text: String) {
        self.content = "<dd> \(text) </dd>"
    }
}
