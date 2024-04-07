//
//  FontWeight.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 02/04/24.
//

import Foundation


struct FontWeight: CSSModifier {
    
    enum Weight {
        case normal
        case bold
        case bolder
        case lighter
        
        var value: String {
            switch self {
            case .normal:
                return "normal"
            case .bold:
                return "bold"
            case .bolder:
                return "bolder"
            case .lighter:
                return "lighter"
            }
        }
    }
    
    var content: String
    
    init(_ weight: Weight) {
        self.content = "font-weight: \(weight.value);"
    }
    
}
