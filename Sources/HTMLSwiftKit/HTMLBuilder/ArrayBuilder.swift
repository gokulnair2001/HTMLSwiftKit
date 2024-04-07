//
//  ArrayBuilder.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 29/03/24.
//

import Foundation


@resultBuilder
struct ArrayBuilder<T> {
    
    static func buildBlock(_ component: [T]...) -> [T] {
        return component.flatMap({ $0 })
    }

    static func buildOptional(_ component: [T]?) -> [T] {
        return component ?? []
    }
    
    static func buildExpression(_ expression: T) -> [T] {
        return [expression]
    }
    
    static func buildEither(first component: [T]) -> [T] {
        return component
    }
    
    static func buildEither(second component: [T]) -> [T] {
        return component
    }
}
