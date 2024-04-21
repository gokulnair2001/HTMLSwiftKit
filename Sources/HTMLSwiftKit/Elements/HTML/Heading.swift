//
//  Heading.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 29/03/24.
//

import Foundation


/// Heading modifier is used to define HTML headings
public struct Heading: HTMLBlock {
    
    /// Heading(H1-H6) support 
    public enum HeaderType: String {
        case h1
        case h2
        case h3
        case h4
        case h5
        case h6
    }
    
    public var content: String = ""
    
    public init(_ type: HeaderType, _ text: String) {
        self.content = "<\(type.rawValue)>\(text)</\(type.rawValue)>"
    }
    
    public init(_ text: String) {
        self.init(.h1, text)
    }
}
