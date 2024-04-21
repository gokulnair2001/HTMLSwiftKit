//
//  Button.swift
//
//
//  Created by Gokul Nair on 20/04/24.
//

import Foundation


/// Defines a clickable button
public struct Button: HTMLBlock {
    
    public var content: String
    
    /// onClick: The onClick event should be a JS code which will be inserted into HTML block using the ``Script`` modifier
    /// classType:  provides a CSS style to the button
    /// title: Button text/title
    public init(onClick: String, classType: String? = nil, _ title: String) {
        if let classType {
            self.content = "<button onclick='\(onClick)', class='\(classType)'>\(title)</button>"
        } else {
            self.content = "<button onclick='\(onClick)'>\(title)</button>"
        }
    }
}
