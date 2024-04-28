//
//  BorderRadius.swift
//
//
//  Created by Gokul Nair on 28/04/24.
//

import Foundation


/// BorderRadius modifier is used to add border radius on any element
public struct BorderRadius: CSSModifier {
    
    public var content: String = ""
    
    public init(_ radius: Int...) {
        
        guard radius.count <= 4 && radius.count >= 1 else { return }
        
        let borderRadius = radius.compactMap({ "\($0)" }).joined(separator: "px")
        
        self.content = "border-radius: \(borderRadius);"
    }
    
}
