//
//  ViewBuilders.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 29/03/24.
//

import SwiftUI


public extension HTMLWrapper {
    
    func HTMLView(@BlockBuilder<HTMLBlock> _ block: () -> [HTMLBlock]) -> [HTMLBlock] {
        return block()
    }
    
    func CSSModifierStack(@BlockBuilder<CSSModifier> _ block: () -> [CSSModifier]) -> [CSSModifier] {
        return block()
    }
    
    func CSSBlockStack(@BlockBuilder<CSSBlock> _ block: () -> [CSSBlock]) -> [CSSBlock] {
        return block()
    }
}

