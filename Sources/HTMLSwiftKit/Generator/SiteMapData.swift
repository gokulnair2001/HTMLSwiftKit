//
//  SiteMapData.swift
//
//
//  Created by Gokul Nair on 07/04/24.
//

import Foundation

public enum ChangeFrequency: String {
    case Always
    case Hourly
    case Daily
    case Weekly
    case Monthly
    case Yearly
    case Never
}

struct SiteMapData {
    var path: String
    var priority: Double
    var changeFrequency: ChangeFrequency = .Never
}
