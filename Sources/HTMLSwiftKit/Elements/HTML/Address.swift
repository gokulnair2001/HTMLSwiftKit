//
//  Address.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 30/03/24.
//

import Foundation


public struct Address: HTMLBlock {
    
    public var content: String = ""
    
    public init(mailTo: String, _ text: String) {
        self.content = "<a href='mailto:\(mailTo)'>\(text)</a>"
    }
}
