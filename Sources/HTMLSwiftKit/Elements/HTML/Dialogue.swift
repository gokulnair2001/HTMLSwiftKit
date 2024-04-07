//
//  Dialogue.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 01/04/24.
//

import Foundation


struct Dialogue: HTMLBlock {
    
    enum State: String {
        case open = "open"
        case close = "close"
    }
    
    var content: String
    
    init(_ state: State = .open, _ text: String) {
        self.content = "<dialog \(state.rawValue)> \(text) </dialog>"
    }
}
