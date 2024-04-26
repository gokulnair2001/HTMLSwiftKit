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
    
    public var content: String = ""
    
    public init(_ state: State = .open, _ text: String) {
        self.content = "<dialog \(state.rawValue)> \(text) </dialog>"
    }
    
    public init(cssClass: CSSBlock, state: State = .open, _ text: String) {
        self.content = "<dialog class='\(cssClass.className)' \(state.rawValue)> \(text) </dialog>"
    }
    
    public init(@CSSModifierBuilder _ style: () -> [CSSModifier], state: State = .open, _ text: String) {
        self.content = "<dialog style='\(generateCSSInlineCode(cssModifiers: style()))' \(state.rawValue)> \(text) </dialog>"
    }
    
    public init(@HtmlBlockBuilder _ htmlBlock: () -> [HTMLBlock]) {
        self.content = "<dialog> \(generateSubCodeBlocks(htmlBlock: htmlBlock())) </dialog>"
    }
    
    public init(cssClass: CSSBlock, @HtmlBlockBuilder _ htmlBlock: () -> [HTMLBlock]) {
        self.content = "<dialog class='\(cssClass.className)'> \(generateSubCodeBlocks(htmlBlock: htmlBlock())) </dialog>"
    }
    
    public init(@CSSModifierBuilder _ style: () -> [CSSModifier], @HtmlBlockBuilder _ htmlBlock: () -> [HTMLBlock]) {
        self.content = "<dialog style='\(generateCSSInlineCode(cssModifiers: style()))'> \(generateSubCodeBlocks(htmlBlock: htmlBlock())) </dialog>"
    }
}
