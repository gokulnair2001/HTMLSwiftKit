//
//  NoScript.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 02/04/24.
//

import Foundation


public struct NoScript: HTMLBlock {
    
    public var content: String
    
    public init(code: String) {
        self.content = "<noscript> \(code) </noscript>"
    }
}
