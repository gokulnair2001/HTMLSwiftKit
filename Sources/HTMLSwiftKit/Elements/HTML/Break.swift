//
//  Break.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 30/03/24.
//

import Foundation


public struct Break: HTMLBlock {
    
    public var content: String {
        return "<br>"
    }
    
    public init() { }
}
