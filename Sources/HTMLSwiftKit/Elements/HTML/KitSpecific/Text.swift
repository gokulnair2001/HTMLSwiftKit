//
//  Text.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


/// A new tag introduced in HTMLSwiftKit
/// Text tag is used while interpolating texts

struct Text: HTMLBlock {
    
    var content: String
    
    init(_ text: String) {
        self.content = text
    }
}
