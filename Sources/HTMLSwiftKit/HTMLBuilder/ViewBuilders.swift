//
//  ViewBuilders.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 29/03/24.
//

import SwiftUI


extension HTMLWrapper {
    
    func HTMLView(@ArrayBuilder<HTMLBlock> _ block: () -> [HTMLBlock]) -> [HTMLBlock] {
        return block()
    }
    
    func CSSModifierStack(@ArrayBuilder<CSSModifier> _ block: () -> [CSSModifier]) -> [CSSModifier] {
        return block()
    }
    
    func CSSBlockStack(@ArrayBuilder<CSSBlock> _ block: () -> [CSSBlock]) -> [CSSBlock] {
        return block()
    }
}

