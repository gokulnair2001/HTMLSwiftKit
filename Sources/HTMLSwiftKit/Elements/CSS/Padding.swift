//
//  Padding.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


/// Padding modifier adds padding to element with respect to the side
public struct Padding: CSSModifier {
    
    /// Side from which padding needs to be set
    public enum PaddingFrom: String {
        case top
        case right
        case left
        case bottom
    }
    
    public var content: String = ""
    
    private init() { }
    
    public init(_ size: Int) {
        self.init()
        self.content = "padding: \(size)px;"
    }
    
    public init(_ from: PaddingFrom, _ size: Int) {
        self.init()
        self.content = "padding-\(from.rawValue): \(size)px;"
    }
}
