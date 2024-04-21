//
//  Border.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


/// Border modifier is used to add various kinds of border on elements
public struct Border: CSSModifier {
    
    /// Available border types
    public enum BorderType: String {
        case none
        case hidden
        case dotted
        case dashed
        case solid
        case double
        case groove
        case ridge
        case inset
        case outset
    }
    
    public var content: String
    
    public init(_ width: Int, border: BorderType = .none, color: String? = nil) {
        self.content = "border: \(width)px \(border.rawValue) \(color ?? "");"
    }
}
