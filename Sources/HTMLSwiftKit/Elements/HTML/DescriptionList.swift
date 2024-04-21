//
//  DescriptionList.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


/// DescriptionList modifier is used to associate terms with their relevant descriptions
public struct DescriptionList: HTMLBlock {
    
    public var content: String = ""
    
    public init(@HtmlBlockBuilder _ htmlBlock: () -> [HTMLBlock]) {
        self.content = "<dl> \(generateSubCodeBlocks(htmlBlock: htmlBlock())) </dl>"
    }
    
}
