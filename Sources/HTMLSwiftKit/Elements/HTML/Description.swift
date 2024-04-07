//
//  Description.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


public struct Description: HTMLBlock {
    
    public var content: String
    
    public init(_ text: String) {
        self.content = "<dd> \(text) </dd>"
    }
}
