//
//  Dialogue.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


/// Dialogue modifier defines a dialog box or subwindow
public struct Dialogue: HTMLBlock {
    
    public enum State: String {
        case open = "open"
        case close = "close"
    }
    
    public var content: String
    
    public init(_ state: State = .open, _ text: String) {
        self.content = "<dialog \(state.rawValue)> \(text) </dialog>"
    }
}
