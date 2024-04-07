//
//  Summary.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


public struct Summary: HTMLBlock {
    
    public var content: String
    
    public init(_ text: String) {
        self.content = "<summary> \(text) </summary>"
    }
}
