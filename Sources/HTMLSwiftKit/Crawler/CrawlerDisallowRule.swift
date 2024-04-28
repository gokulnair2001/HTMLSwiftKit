//
//  CrawlerDisallowRule.swift
//  HTMLSwiftKitTest
//
//  Created by Gokul Nair on 03/04/24.
//

import Foundation

/// Crawler disallow rule
public struct CrawlerDisallowRule {
    
    /// Agent/Crawler name
    var agent: String
    /// Paths to disallow crawling
    var paths: [String]
    
    
    /// Used to set Disallow rule for custom agent with specified path
    /// - Parameters:
    ///   - agent: custom agent name
    ///   - paths: paths to disallow crawling
    public init(agent: String, paths: [String]) {
        self.agent = agent
        self.paths = paths
    }
    
    /// Used to set Disallow rule for custom agent
    /// - Parameter agent: custom agent name
    public init(agent: String) {
        self.agent = agent
        self.paths = ["*"]
    }

    /// Used to set Disallow rule for crawlers with specified path
    /// - Parameters:
    ///   - agent: custom agent type
    ///   - paths: paths to disallow crawling
    public init(robot: Crawler, paths: [String]) {
        self.agent = robot.rawValue
        self.paths = paths
    }

    /// Used to set Disallow rule for crawlers
    /// - Parameter agent: custom agent name
    public init(robot: Crawler) {
        self.agent = robot.rawValue
        self.paths = ["*"]
    }
}
