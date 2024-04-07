//
//  Section.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 02/04/24.
//

import Foundation


struct Section: HTMLBlock {
    
    var content: String = ""
    
    init(_ htmlBlock: [HTMLBlock] = []) {
        self.content = "<section> \(generateSubCodeBlocks(htmlBlock: htmlBlock)) </section>"
    }

}
