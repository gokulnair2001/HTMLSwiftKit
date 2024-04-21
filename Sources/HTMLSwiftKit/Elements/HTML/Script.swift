//
//  Script.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 02/04/24.
//

import Foundation


/// Script modifier is used to embed a client-side script (JavaScript)
public struct Script: HTMLBlock {
    
    public var content: String
    
    public init(code: String) {
        self.content = "<script> \(code) </script>"
    }
}
