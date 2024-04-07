//
//  HorizontalRule.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 02/04/24.
//

import Foundation


public struct HorizontalRule: HTMLBlock {
    
    public var content: String {
        return "<hr>"
    }
    
    public init() { }
}
