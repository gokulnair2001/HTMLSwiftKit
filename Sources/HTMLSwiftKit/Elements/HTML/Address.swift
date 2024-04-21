//
//  Address.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 30/03/24.
//

import Foundation


/// Address tag defines the contact information for the author/owner of a document or an article
public struct Address: HTMLBlock {
    
    public var content: String = ""
    
    public init(mailTo: String, _ text: String) {
        self.content = "<a href='mailto:\(mailTo)'>\(text)</a>"
    }
}
