//
//  Border.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation

public struct Border: CSSModifier {
    
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
    
    init(_ width: Int, border: BorderType = .none, color: String? = nil) {
        self.content = "border: \(width)px \(border.rawValue) \(color ?? "");"
    }
}
