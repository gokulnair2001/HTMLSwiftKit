//
//  Text.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


/// A new tag introduced in HTMLSwiftKit
/// Text tag is used while interpolating texts

public struct Text: HTMLBlock {
    
    public var content: String
    
    init(_ text: String) {
        self.content = text
    }
}
