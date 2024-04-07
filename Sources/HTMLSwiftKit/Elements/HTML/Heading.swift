//
//  Heading.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 29/03/24.
//

import Foundation


public struct Heading: HTMLBlock {
    
    public enum HeaderType: String {
        case h1
        case h2
        case h3
        case h4
        case h5
        case h6
    }
    
    public var content: String = ""
    
    init(_ type: HeaderType, _ text: String) {
        self.content = "<\(type.rawValue)>\(text)</\(type.rawValue)>"
    }
    
    init(_ text: String) {
        self.init(.h1, text)
    }
}
