//
//  Button.swift
//
//
//  Created by Gokul Nair on 20/04/24.
//

import Foundation


public struct Button: HTMLBlock {
    
    public var content: String
    
    public init(onClick: String, classType: String? = nil, _ title: String) {
        if let classType {
            self.content = "<button onclick='\(onClick)', class='\(classType)'>\(title)</button>"
        } else {
            self.content = "<button onclick='\(onClick)'>\(title)</button>"
        }
    }
}
