//
//  Crawler.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 03/04/24.
//

import Foundation

/// All the Crawler supported by HTMLSwiftKit
public enum Crawler: String {
    
    /// Apple Bot
    case apple = "Applebot"
    
    /// Disallow if you aren't interested in targeting the Chinese market.
    case baidu = "baiduspider"
    
    /// Bing Bot
    case bing = "bingbot"
    
    /// GPT Bot
    case chatGPT = "GPTBot"
    
    /// Common Crawler
    case commonCrawl = "CCBot"
    
    /// Duck duck bot
    case duckDuck = "DuckDuckBot"
    
    /// Google's main crawler used for Google Search
    case google = "Googlebot"
    
    /// crawler specializing in search engine optimization
    case majestic = "Majestic-12"
    
    /// Crawler built by yahoo
    case yahoo = "slurp"
    
    /// Disallow if you aren't interested in targeting the Russian market.
    case yandex = "yandex"
    
}
