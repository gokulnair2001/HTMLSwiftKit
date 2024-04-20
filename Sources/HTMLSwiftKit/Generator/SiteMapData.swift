//
//  SiteMapData.swift
//
//
//  Created by Gokul Nair on 07/04/24.
//

import Foundation


/// Site Map Change frequency
public enum ChangeFrequency: String {
    case Always
    case Hourly
    case Daily
    case Weekly
    case Monthly
    case Yearly
    case Never
}

/// Site Map Data model
struct SiteMapData {
    
    /// page path
    var path: String
    
    /// crawler priority
    var priority: Double
    
    /// Crawling check frequency
    var changeFrequency: ChangeFrequency
}
