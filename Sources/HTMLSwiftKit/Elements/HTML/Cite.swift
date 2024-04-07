//
//  Cite.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


struct Cite: HTMLBlock {
    
    var content: String
    
    init(_ text: String) {
        self.content = "<cite> \(text) </cite>"
    }
}
