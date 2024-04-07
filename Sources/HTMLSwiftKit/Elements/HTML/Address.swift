//
//  Address.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 30/03/24.
//

import Foundation


struct Address: HTMLBlock {
    
    var content: String = ""
    
    init(mailTo: String, _ text: String) {
        self.content = "<a href='mailto:\(mailTo)'>\(text)</a>"
    }
}
