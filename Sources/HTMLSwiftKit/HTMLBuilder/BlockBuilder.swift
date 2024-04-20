//
//  BlockBuilder.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 29/03/24.
//

import Foundation

/// HTMLSwiftKit block builders

typealias HtmlBlockBuilder = BlockBuilder<HTMLBlock>
typealias CSSBlockBuilder = BlockBuilder<CSSBlock>
typealias CSSModifierBuilder = BlockBuilder<CSSModifier>


@resultBuilder
public struct BlockBuilder<T> {
    
    public static func buildBlock(_ component: [T]...) -> [T] {
        return component.flatMap({ $0 })
    }
    
    public static func buildOptional(_ component: [T]?) -> [T] {
        return component ?? []
    }
    
    public static func buildExpression(_ expression: T) -> [T] {
        return [expression]
    }
    
    public static func buildEither(first component: [T]) -> [T] {
        return component
    }
    
    public static func buildEither(second component: [T]) -> [T] {
        return component
    }
}
