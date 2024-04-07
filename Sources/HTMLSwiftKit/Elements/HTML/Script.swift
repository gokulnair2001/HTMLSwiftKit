//
//  Script.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 02/04/24.
//

import Foundation


public struct Script: HTMLBlock {
    
    public var content: String
    
    init(code: String) {
        self.content = "<script> \(code) </script>"
    }
}
