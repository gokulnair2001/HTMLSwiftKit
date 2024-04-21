//
//  DescriptionTerm.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


/// DescriptionTerm modifier is used to describe a term/name in a description list
public struct DescriptionTerm: HTMLBlock {
    
    public var content: String
    
    public init(_ text: String) {
        self.content = "<dt> \(text) </dt>"
    }
}
