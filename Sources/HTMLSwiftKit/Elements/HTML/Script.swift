//
//  Script.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 02/04/24.
//

import Foundation


struct Script: HTMLBlock {
    
    var content: String
    
    init(code: String) {
        self.content = "<script> \(code) </script>"
    }
}
