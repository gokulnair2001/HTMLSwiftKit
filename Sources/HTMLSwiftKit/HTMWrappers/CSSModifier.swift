//
//  CSSModifier.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


/// CSS Modifiers
/// Every CSSBlock requires a set of modifiers to be applied. Thus all CSSModifier type elements can be used inside CSSBlock
public protocol CSSModifier {
    
    /// CSS modifier code/content
    var content: String { get }
    
}
