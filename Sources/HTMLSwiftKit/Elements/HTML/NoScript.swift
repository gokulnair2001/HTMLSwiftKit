//
//  NoScript.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 02/04/24.
//

import Foundation


/// Noscript modifier is used to display the alternate text on the browser that does not support scripts.
public struct NoScript: HTMLBlock {
    
    public var content: String
    
    public init(code: String) {
        self.content = "<noscript> \(code) </noscript>"
    }
}
